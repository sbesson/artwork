#! /bin/sh

find * -name *.svg -exec sh -c 'convert -background none $1 "${1%.*}.png"' sh {} \;
convert -density 384 -background none ome/ome-logomark.svg -define icon:auto-resize ome/ome.ico
mkdir -p target
zip -r target/idr-logos.zip idr
zip -r target/ome-logos.zip ome
zip -r target/ome-product-logos.zip omero bio-formats ome-files
