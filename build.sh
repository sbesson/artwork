find * -name *.svg -exec sh -c 'convert $1 -background "rgba(0,0,0,0)" "${1%.*}.png"' sh {} \;
mkdir -p target
zip -r target/idr-logos.zip idr
zip -r target/ome-logos.zip ome
zip -r target/ome-product-logos.zip omero bio-formats ome-files
