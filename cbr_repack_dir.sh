#bin/bash

cd "$PWD"

for file in ./*.cbr; do 
if [ -f "$file" ]; then
~/bash_scripts/cbr_repack.sh "$file";
fi 
done