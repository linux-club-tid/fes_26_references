#!/usr/bin/env bash

f=$1
name=${f%.*}

typst watch "$name.typ" &
typst_pid=$!

zathura "$name.pdf" &
zathura_pid=$!

cleanup() {
  kill "$typst_pid" "$zathura_pid" 2>/dev/null || true
  wait "$typst_pid" "$zathura_pid" 2>/dev/null || true
}

trap cleanup EXIT INT TERM HUP

wait
