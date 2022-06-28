#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
#echo "$SCRIPT_DIR" # script directory

cp -r $SCRIPT_DIR/radio_code/ ~/
