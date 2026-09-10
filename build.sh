#!/usr/bin/env bash

set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
poster_dir="$project_dir/posters"
output_dir="$poster_dir/pdf"

mkdir -p "$output_dir"

for source in "$poster_dir"/*.typ; do
  name="$(basename -- "$source" .typ)"
  typst compile "$source" "$output_dir/$name.pdf"
done
