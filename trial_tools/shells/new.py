#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2026 Uliboooo
# SPDX-License-Identifier: MIT

"""Create and start a disposable shell-trial session."""

from __future__ import annotations

import argparse
import datetime as dt
import os
from pathlib import Path
import shutil
import shlex
import subprocess
import sys
from typing import NoReturn


APP_NAME = "cli_trial"
MATERIALS = ("welcome.txt", "members.txt", "sightings.txt")


def fail(message: str) -> NoReturn:
    print(f"エラー: {message}", file=sys.stderr)
    raise SystemExit(1)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="shell体験の新しいセッションを開始します")
    parser.add_argument(
        "--no-attach",
        action="store_true",
        help="tmuxへ接続せず、バックグラウンドで起動する（動作確認用）",
    )
    return parser.parse_args()


def run_tmux(*args: str) -> None:
    subprocess.run(("tmux", *args), check=True)


def main() -> None:
    args = parse_args()
    source_dir = Path(__file__).resolve().parent
    required = (*MATERIALS, "guide.py", "answer.py")
    missing = [name for name in required if not (source_dir / name).is_file()]
    if missing:
        fail("教材ファイルがありません: " + ", ".join(missing))
    if shutil.which("tmux") is None:
        fail("tmuxが見つかりません。先にtmuxをインストールしてください")

    data_home = Path(os.environ.get("XDG_DATA_HOME", Path.home() / ".local/share"))
    work_root = data_home / APP_NAME / "work"
    timestamp = dt.datetime.now().strftime("%Y%m%d-%H%M%S-%f")
    work_dir = work_root / timestamp
    work_dir.mkdir(parents=True)

    for name in MATERIALS:
        target = work_dir / name
        shutil.copyfile(source_dir / name, target)
        target.chmod(0o440)

    support_dir = work_dir / ".trial-bin"
    support_dir.mkdir(mode=0o700)
    guide = support_dir / "guide.py"
    answer = support_dir / "answer"
    shutil.copyfile(source_dir / "guide.py", guide)
    shutil.copyfile(source_dir / "answer.py", answer)
    guide.chmod(0o500)
    answer.chmod(0o500)

    answers_file = work_dir / ".answers.jsonl"
    answers_file.touch(mode=0o600)
    rc_file = work_dir / ".bashrc"
    rc_file.write_text(
        "\n".join(
            (
                "unset PROMPT_COMMAND BASH_ENV ENV",
                f"export CLI_TRIAL_DIR={shlex.quote(str(work_dir))}",
                f"export PATH={shlex.quote(str(support_dir))}:\"$PATH\"",
                f"export HISTFILE={shlex.quote(str(work_dir / '.bash_history'))}",
                "export HISTCONTROL=ignoreboth",
                "PS1='trial$ '",
                "ulimit -f 2048 2>/dev/null || true",
                f"cd -- {shlex.quote(str(work_dir))}",
                "clear",
                "printf '%s\\n' '右側は本物のbashです。問題の答えは  answer 答え  で送信します。'",
                "printf '%s\\n' 'Tab: 入力補完 / ↑: 履歴 / Ctrl+C: 実行中の処理を止める'",
            )
        )
        + "\n",
        encoding="utf-8",
    )
    rc_file.chmod(0o600)

    session = f"cli-trial-{timestamp}-{os.getpid()}"
    guide_command = shlex.join((sys.executable, str(guide), str(answers_file)))
    shell_command = shlex.join(("bash", "--noprofile", "--rcfile", str(rc_file)))

    try:
        run_tmux("new-session", "-d", "-s", session, "-c", str(work_dir), guide_command)
        run_tmux("split-window", "-h", "-p", "62", "-t", session, "-c", str(work_dir), shell_command)
        run_tmux("set-option", "-t", session, "mouse", "on")
        run_tmux("set-option", "-t", session, "pane-border-status", "top")
        run_tmux("select-pane", "-t", f"{session}:0.0", "-T", "問題・ヒント")
        run_tmux("select-pane", "-t", f"{session}:0.1", "-T", "ここにコマンドを入力")
        run_tmux("bind-key", "-T", "prefix", "R", "confirm-before", "-p", "この体験を終了しますか？ (y/n)", "kill-session")
        run_tmux("select-pane", "-t", f"{session}:0.1")
    except subprocess.CalledProcessError:
        subprocess.run(("tmux", "kill-session", "-t", session), check=False)
        fail("tmuxセッションの起動に失敗しました")

    print(f"体験セッション: {session}")
    print(f"作業ディレクトリ: {work_dir}")
    print("終了・初期化: Ctrl+Bを押して離し、Shift+R、y")

    if args.no_attach:
        print(f"接続する場合: tmux attach-session -t {session}")
        return
    if os.environ.get("TMUX"):
        run_tmux("switch-client", "-t", session)
    else:
        run_tmux("attach-session", "-t", session)


if __name__ == "__main__":
    main()
