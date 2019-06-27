
mkdir  dir1
cd dir1
mkdir dir2
cd dir2
touch file{1..5}
mkdir dir3
cd dir3
touch file{6..10}
cd ../..
tree
rm -r dir1

