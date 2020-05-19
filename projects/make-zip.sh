#!/usr/bin/env bash

# 提出用のzipファイルを作成する

n=$1; shift
cd $n
zip -r ../project$n.zip *
cd ..

