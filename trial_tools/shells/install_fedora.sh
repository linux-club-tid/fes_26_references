#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 Uliboooo
# SPDX-License-Identifier: MIT

set -euo pipefail

if [[ ! -r /etc/os-release ]]; then
  printf 'エラー: /etc/os-releaseを読み取れません。\n' >&2
  exit 1
fi

ID=""
ID_LIKE=""
PRETTY_NAME="不明"
# shellcheck disable=SC1091
source /etc/os-release
if [[ $ID != "fedora" && " $ID_LIKE " != *" fedora "* ]]; then
  printf 'エラー: このスクリプトはFedora向けです（検出: %s）。\n' "$PRETTY_NAME" >&2
  exit 1
fi

if ! command -v dnf >/dev/null 2>&1; then
  printf 'エラー: dnfが見つかりません。\n' >&2
  exit 1
fi

run_dnf() {
  if (( EUID == 0 )); then
    dnf "$@"
    return
  fi
  if ! command -v sudo >/dev/null 2>&1; then
    printf 'エラー: インストールにはroot権限またはsudoが必要です。\n' >&2
    exit 1
  fi
  sudo dnf "$@"
}

printf 'shell体験に必要なパッケージをインストールします。\n'
run_dnf install -y \
  bash \
  coreutils \
  grep \
  python3 \
  tmux

printf 'インストール結果を確認します。\n'
for command_name in bash grep python3 tmux wc; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf 'エラー: %sが見つかりません。\n' "$command_name" >&2
    exit 1
  fi
done

if ! bash --noprofile --norc -ic 'type bind' \
  </dev/null >/dev/null 2>&1; then
  printf 'エラー: bashでreadline（bind）が利用できません。\n' >&2
  exit 1
fi

if ! python3 -c 'import sys; raise SystemExit(sys.version_info < (3, 10))'; then
  printf 'エラー: Python 3.10以降が必要です。\n' >&2
  exit 1
fi

script_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
printf '\n準備が完了しました。\n'
printf '次のコマンドで体験を起動できます:\n'
printf '  cd %q\n' "$script_dir"
printf '  ./new.py\n'
