#! /bin/sh

find * -name *.svg -exec sh -c 'convert -background none $1 "${1%.*}.png"' sh {} \;
convert -background none ome/ome-logomark.svg -define icon:auto-resize -resize "224x224^" -gravity center -extent 256x256 ome/ome.ico
mkdir -p target
zip -r target/idr-logos.zip idr
zip -r target/ome-logos.zip ome
zip -r target/ome-product-logos.zip omero bio-formats ome-files
