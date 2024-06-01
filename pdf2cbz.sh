#bin/bash

cd "$PWD"

filename=${1%.*}
newdir="$filename"

echo "Converting $filename"

cbzname="$filename.cbz"

if [ -f "$cbzname" ]; then
echo "CBZ already exists"
exit
fi

echo "Making Directory"

mkdir "$newdir"

echo "Extracting PNG Images from PDF"

pdftoppm -png "$1" "$newdir"/"$filename"

cd "$newdir"

echo "Building Archive"

zip "$filename.cbz" *.png

cd ../

mv "$newdir"/"$filename.cbz" ./

echo "Cleaning Up"

rm -rf "$newdir";