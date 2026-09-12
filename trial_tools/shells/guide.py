#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2026 Uliboooo
# SPDX-License-Identifier: MIT

"""Display shell-trial challenges and advance from submitted answers."""

from __future__ import annotations

from dataclasses import dataclass
import json
from pathlib import Path
import sys
import time
import unicodedata


@dataclass(frozen=True)
class Challenge:
    title: str
    body: tuple[str, ...]
    answers: tuple[str, ...]
    hints: tuple[str, ...]
    explanation: str


CHALLENGES = (
    Challenge(
        "1 / 5  ファイルを見つける",
        ("右側で ls を実行してください。", "表示された中で、wから始まるファイル名は？"),
        ("welcome.txt",),
        ("一覧を見るコマンドは ls です。", "送信例: ans welcome.txt"),
        "ls で、今いる場所のファイル一覧を表示できました。",
    ),
    Challenge(
        "2 / 5  ファイルを読む",
        ("welcome.txt の内容を表示してください。", "探しているペンギンの名前は？"),
        ("tux",),
        ("ファイル全体を読むコマンドは cat です。", "cat welcome.txt"),
        "cat で、テキストファイルの中身を読めました。",
    ),
    Challenge(
        "3 / 5  必要な行を探す",
        ("members.txt から Tux を含む行だけを表示してください。", "Tux の担当は？"),
        ("guide",),
        ("grep 検索文字 ファイル名 の順です。", "grep Tux members.txt"),
        "grep で、大量の文章から必要な行だけを取り出せました。",
    ),
    Challenge(
        "4 / 5  行番号も表示する（発展）",
        (
            "sightings.txt の Tux の行を、行番号付きで表示してください。",
            "最後に目撃された場所は？",
        ),
        ("pc room", "pcroom"),
        ("grep に -n を付けると行番号も出ます。", "grep -n Tux sightings.txt"),
        "grep -n では、見つかった場所の行番号も確認できます。",
    ),
    Challenge(
        "5 / 5  コマンドを組み合わせる（発展）",
        ("Tux を含む目撃記録は全部で何件？", "grep の結果を wc -l へ渡して数えてみましょう。"),
        ("4",),
        ("| は左の結果を右のコマンドへ渡します。", "grep Tux sightings.txt | wc -l"),
        "小さなコマンドを | でつなぎ、大きな処理を作れました。",
    ),
)


def normalize(value: str) -> str:
    value = unicodedata.normalize("NFKC", value).strip().casefold()
    return " ".join(value.split())


def clear() -> None:
    print("\033[2J\033[H", end="")


def draw(challenge: Challenge, attempts: int, message: str = "") -> None:
    clear()
    print("━━━ 迷子のペンギン Tux を探せ！ ━━━\n")
    print(challenge.title)
    print("─" * 42)
    for line in challenge.body:
        print(line)
    print("\n右側で調べたら  ans 答え  で送信")
    if message:
        print(f"\n{message}")
    if attempts:
        hint = challenge.hints[min(attempts - 1, len(challenge.hints) - 1)]
        print(f"\nヒント: {hint}")
    print("\nTab: 補完 / ↑↓: 履歴 / ←→: 移動 / Ctrl+C: 処理を止める", flush=True)


def draw_basic_complete() -> None:
    clear()
    print("━━━ 基本コース クリア！ ━━━\n")
    print("ls・cat・grep を使って Tux の担当を発見しました。")
    print("\n時間があれば発展問題へ進めます。")
    print("右側で次のどちらかを入力してください。\n")
    print("  ans next    発展問題へ")
    print("  ans finish  ここで終了", flush=True)


def draw_finished(completed_all: bool) -> None:
    clear()
    heading = "全5問クリア！" if completed_all else "基本3問クリア！"
    print(f"━━━ {heading} ━━━\n")
    print("使った道具:")
    print("  ls      ファイルの一覧を見る")
    print("  cat     ファイルの内容を読む")
    print("  grep    必要な行を探す")
    if completed_all:
        print("  wc -l   行数を数える")
        print("  |       コマンド同士をつなぐ")
    print("\nLinuxのshellでは、小さな道具を組み合わせて")
    print("コンピューターへ自由にお願いできます。")
    print("\nスタッフを呼んでください。ありがとうございました！", flush=True)


def keep_finished_screen() -> None:
    """Keep the guide pane open until staff resets the tmux session."""
    while True:
        time.sleep(3600)


def read_records(stream) -> list[str]:
    records = []
    while line := stream.readline():
        try:
            value = json.loads(line).get("answer")
        except (json.JSONDecodeError, AttributeError):
            continue
        if isinstance(value, str):
            records.append(value)
    return records


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("usage: guide.py ANSWERS_FILE")
    answer_file = Path(sys.argv[1])
    index = 0
    attempts = 0
    choosing_course = False
    draw(CHALLENGES[index], attempts)

    with answer_file.open("r", encoding="utf-8") as stream:
        while True:
            records = read_records(stream)
            if not records:
                time.sleep(0.15)
                continue
            for submitted in records:
                answer = normalize(submitted)
                if choosing_course:
                    if answer == "finish":
                        draw_finished(False)
                        keep_finished_screen()
                    if answer == "next":
                        choosing_course = False
                        draw(CHALLENGES[index], attempts)
                    else:
                        draw_basic_complete()
                    continue

                challenge = CHALLENGES[index]
                if answer not in {normalize(item) for item in challenge.answers}:
                    attempts += 1
                    draw(challenge, attempts, "まだ見つかっていないようです。もう一度探してみよう。")
                    continue

                print(f"\n見つかった！ {challenge.explanation}", flush=True)
                time.sleep(1.2)
                index += 1
                attempts = 0
                if index == 3:
                    choosing_course = True
                    draw_basic_complete()
                elif index == len(CHALLENGES):
                    draw_finished(True)
                    keep_finished_screen()
                else:
                    draw(CHALLENGES[index], attempts)


if __name__ == "__main__":
    main()
