#bin/bash

cd "$PWD"

filename=${1%.*}
newdir="$filename"

echo "$newdir"

echo "Making Directory"
mkdir "$newdir";

echo "mv '$1' '$newdir'/;";

mv "$1" "$newdir"/;

cd "$newdir";

unrar x "$1";

mv "$1" ../

zip -r "$filename.cbz" ./*

mv "$filename.cbz" ../

cd ..


rm -rf "$newdir"