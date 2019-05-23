cut -d : -f 1,7 /etc/passwd | grep '/bin/bash' | cut -d : -f 1 | sort -n
