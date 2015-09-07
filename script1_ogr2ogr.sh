#!/bin/sh

cd /home/camelia/tim_bigdata
#one time setup of FWTools (http://fwtools.maptools.org/)
cd tools
tar -zxvf FWTools-linux-2.0.6.tar.gz
cd FWTools-2.0.6
./install.sh
#we have already uncompressed all archives from all 7 cities
#obs: for the grid datasets (one for each city), the archives needed a rename as ORIGINALNAME.zip, then decompressed => ORIGINALNAME => then decompressed again => folder with shapefiles
#obs: A 'shapefile' really doesn't exist without the 3 minimum component files (.shp, .shx, .dbf) that need to be placed in the same folder
#convert all grids ARCGIS projects (shapes) to GeoJSON 
cd bin_safe/
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/BARI/bari-grid/intersection_Bari_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/BARI/bari_grid.json /home/camelia/tim_bigdata/BARI/bari-grid/intersection_Bari_W_GRIDIT_NEW.shp
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/MILANO/milano-grid/intersection_Milano_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/MILANO/milano_grid.json /home/camelia/tim_bigdata/MILANO/milano-grid/intersection_Milano_W_GRIDIT_NEW.shp
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/NAPOLI/napoli-grid/intersection_Napoli_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/NAPOLI/napoli_grid.json /home/camelia/tim_bigdata/NAPOLI/napoli-grid/intersection_Napoli_W_GRIDIT_NEW.shp
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/PALERMO/palermo-grid/intersection_Palermo_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/PALERMO/palermo-grid.json /home/camelia/tim_bigdata/PALERMO/palermo-grid/intersection_Palermo_W_GRIDIT_NEW.shp
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/VENEZIA/venezia-grid/intersection_Venezia_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/VENEZIA/venezia-grid.json /home/camelia/tim_bigdata/VENEZIA/venezia-grid/intersection_Venezia_W_GRIDIT_NEW.shp
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/TORINO/torino-grid/intersection_Torino_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/TORINO/torino-grid.json /home/camelia/tim_bigdata/TORINO/torino-grid/intersection_Torino_W_GRIDIT_NEW.shp
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/ROMA/roma-grid/intersection_Roma_W_GRIDIT_NEW.prj /home/camelia/tim_bigdata/ROMA/roma-grid.json /home/camelia/tim_bigdata/ROMA/roma-grid/intersection_Roma_W_GRIDIT_NEW.shp
#also, transform the CAP shapefile
./ogr2ogr -f "GeoJSON" -s_srs /home/camelia/tim_bigdata/CAP_Shapefile/CodAvvPostale.prj /home/camelia/tim_bigdata/cap-shapefile-grid.json /home/camelia/tim_bigdata/CAP_Shapefile/CodAvvPostale.shp



