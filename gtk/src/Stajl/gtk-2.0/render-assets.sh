#! /bin/bash

# INKSCAPE="flatpak run org.inkscape.Inkscape"
INKSCAPE="/usr/bin/inkscape" # comment this line and uncomment the above line if you're using a flatpak install of inkscape
OPTIPNG="/usr/bin/optipng"

SRC_FILE="assets.svg"
ASSETS_DIR="assets"
INDEX="assets.txt"

for i in `cat $INDEX`
do 
if [ -f $ASSETS_DIR/$i.png ]; then
    echo $ASSETS_DIR/$i.png exists.
else
    echo
    echo Rendering $ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null #\
              # remove the above --export-png and uncomment the line below if you're using inkscape 1.0 or newer
              # --export-filename=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null #\
    # && $OPTIPNG -o7 --quiet $ASSETS_DIR/$i.png 
fi
done
exit 0
