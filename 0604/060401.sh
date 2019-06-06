

if [ -f "$1" ]; then
    du "$1"
else

    echo "${1}:通常のファイルではありません"
fi
