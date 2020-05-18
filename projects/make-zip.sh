#!/usr/bin/env bash

# 提出用のzipファイルを作成する

n=$1; shift
zip -r project$n.zip $n/*

