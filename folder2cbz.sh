#bin/bash

cd "$PWD"

filename=${1%.*}
newdir="$filename"

cd "$newdir"

echo "Building Archive"

zip "$filename.cbz" *.png

cd ../

mv "$newdir"/"$filename.cbz" ./

echo "Cleaning Up"

rm -rf "$newdir";
