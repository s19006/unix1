
sudo find ~ -type f -printf "%s : %f\n" | sort -nr | head -n 5
