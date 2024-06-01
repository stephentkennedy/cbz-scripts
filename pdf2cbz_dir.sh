#bin/bash

cd "$PWD"

for file in ./*.pdf; do 
if [ -f "$file" ]; then
~/bash_scripts/pdf2cbz.sh "$file";
fi 
done