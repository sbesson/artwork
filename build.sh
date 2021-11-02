find * -name *.svg -exec sh -c 'convert $1 -background "rgba(0,0,0,0)" "${1%.*}.png"' sh {} \;
zip -r idr idr-logos.zip
zip -r ome ome-logos.zip
zip -r ome bio-formats ome-files ome-product-logos.zip
