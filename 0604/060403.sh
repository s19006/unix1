if [ -d "$1" ]; then
    #for file in $(ls "$1")
    for file in $(find $1 -maxdepth 1 -type f)
    do
        if [ -x "$file" ]; then
            echo "$file"
        fi
    done
else
    echo "$1":'ディレクトリではありません'
 fi
