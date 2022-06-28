#!/usr/bin/env bash
# Script not in use
echo 'script not in use'
exit 0

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
#echo "$SCRIPT_DIR" # script directory

cp -r $SCRIPT_DIR/radio_code/ ~/
