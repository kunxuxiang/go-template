#!/usr/bin/env bash

BIN_DIR=$(dirname "$0")
PRGDIR=${PRGDIR:-$(cd "$BIN_DIR/.." || exit; pwd)}

if [ -x "git --version" ]; then
  echo "git is not installed!"
fi

if cd "$PRGDIR" || exit 1; then
  find "$PRGDIR" -type f -name ".gitkeep" -exec rm {} \;
else
  echo "directory not exist!"
  exit 1
fi

rm -rf "$PRGDIR/scripts/init.sh"