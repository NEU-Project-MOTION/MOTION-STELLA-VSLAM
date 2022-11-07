#!/usr/bin/env bash

STELLA_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && cd .. && pwd )

rm -rf $STELLA_DIR/build
rm -rf $STELLA_DIR/install
rm -rf $STELLA_DIR/log