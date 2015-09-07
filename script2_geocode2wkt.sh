#!/bin/sh
mkdir tools_github
cd tools_github/
git clone  https://github.com/larsbutler/geomet
cd geomet
sudo python setup.py install


#Until now, in the bari_grid.json (and similar others) we have JSON array of features like this excerpt:

#{ "type": "Feature", "properties": { "id": "NR" }, "geometry": { "type": "Polygon", "coordinates": [ [ [ x1, y1 ], [ x2, y2 ], [ x3, y3 ], [ x4, y4 ], [ x5, y5 ] ] ] } }


#which we want to transform into :

#{gridid:NR, geom:"POLYGON ((x1 y1, x2 y2, x3 y3, x4 y4, x5 y5))"},


#For this purpose, we execute the command:


python geojson2wkt.py

