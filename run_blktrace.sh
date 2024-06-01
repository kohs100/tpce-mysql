#!/bin/bash

echo "Starting blktrace."
../blktrace/blktrace -d $1 -o - | blkparse -i - -o $2