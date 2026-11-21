#!/usr/bin/env bash
set -e
LIB="linen-armory.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/nimblewbookh/oralvalveio/releases/download/frosty-badger-golden-canyon/linen-armory.a"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
