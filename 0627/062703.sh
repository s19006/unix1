#!/bin/bash
if [ -f "$1" ]; then
    wc -l "file=>$1"
fi

if [ -d "$1" ]; then
    wc -l "derectory=>$1"
fi


if [ -d "$1" ]; then
    for file in $(find $1 -maxdepth 1 -type f)
    do
        if [ ! -r "$file" ]; then
            echo "$file"
        fi
    done
else
    echo "$1":"ディレクトリではありません"
fi

usage()
{
    local script_name=$(basename "$0")

  cat << END
使い方:062703.sh DIRPATH...
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
FILEPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi
if [ -d "$1" ]; then
    for file in $(find $1 -maxdepth 1 -type f)
    do
        if [ ! -r "$file" ]; then
            echo "$file"
        fi
    done
else
    echo "$1":"ディレクトリではありません"
fi

