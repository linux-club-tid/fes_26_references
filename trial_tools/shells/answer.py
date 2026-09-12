#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2026 Uliboooo
# SPDX-License-Identifier: MIT

"""Submit an answer from the participant's bash pane to the guide pane."""

from __future__ import annotations

import json
import os
from pathlib import Path
import sys


def main() -> None:
    if len(sys.argv) < 2:
        print("使い方: ans 答え")
        print("例: ans Tux")
        raise SystemExit(2)

    trial_dir = os.environ.get("CLI_TRIAL_DIR")
    if trial_dir is None:
        print("shell体験セッション内で実行してください", file=sys.stderr)
        raise SystemExit(1)

    record = {"answer": " ".join(sys.argv[1:])}
    answer_file = Path(trial_dir) / ".answers.jsonl"
    with answer_file.open("a", encoding="utf-8") as stream:
        stream.write(json.dumps(record, ensure_ascii=False) + "\n")
        stream.flush()
    print("左側へ答えを送りました。")


if __name__ == "__main__":
    main()
