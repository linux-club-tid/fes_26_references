#!/usr/bin/env python3

#=======================================
# SPDX-FileCopyrightText: 2026 Uliboooo
# SPDX-License-Identifier: MIT
#=======================================

#=======================================
# Linux上での動作しか保証できません
# Windows等の環境で動かす場合はWSL2などを用意してください
#=======================================

#=======================================
# README
#
# ## このscriptの実行前に以下の状態であることを確認してください
#
# - ファイル構成が以下であること
#
# ./
#    linux_kernel_README.txt
#    new.py <- this script
#    script.txt
#
# - Linux上(or WSL2等)であること
# - 上記環境のユーザーが`work`であること
#
# ## 新しい体験環境を作成する
#
# `./new.py`をシェルで実行してください
#=======================================

import datetime
import os
import sys
import shutil
from pathlib import Path
from sys import stderr, stdout
from datetime import date

#=======================================
# FUNCTIONS
#=======================================

def error(s):
    print(s, file=sys.stderr)
    sys.exit(1)

def get_new_work() -> str:
    now  = datetime.datetime.now().strftime("%m_%d_%a_%H_%M_%Ssec")
    return now

NAME = "cli_trial"

#===================================
# RESOLVE PATH and MAKE DIRS & FILES
#===================================

home = Path.home()
xdg_data_home = os.environ.get("XDG_DATA_HOME")

data_home = (
    Path(xdg_data_home)
    if xdg_data_home is not None
    else home / ".local/share"
)

app_path = data_home / NAME

work_path = app_path / "work"

work_path.mkdir(parents=True, exist_ok=True)

# create a dir for new work
new_work_dir = work_path / get_new_work()
new_work_dir.mkdir(parents=True, exist_ok=True)


current_dir = Path(__file__).parent
LinuxKernelRM_path = current_dir / "linux_kernel_README.txt"
script_path = current_dir / "script.txt"

if not (LinuxKernelRM_path.exists() and script_path.exists()):
    error("new.pyのディレクトリ内に以下のファイルが存在しません。\n- ./linux_kernel_README.txt\n- ./script.txt\n~/fes_26_references/trial_tools/shells/内に上記のファイルが存在することを確認してください。\nそれでもダメなら内山(2年)まで")

new_LinuxKernelRM_path = new_work_dir / "linux_kernel_README.txt"
new_script_path = new_work_dir / "script.txt"

#===================================
# READY DATA
#===================================

shutil.copy(LinuxKernelRM_path, new_LinuxKernelRM_path)
shutil.copy(script_path, new_script_path)
new_LinuxKernelRM_path.chmod(0o440)
new_script_path.chmod(0o440)

print(f"以下のコマンドを実行してください。\ncd {new_work_dir}", file=stdout)

