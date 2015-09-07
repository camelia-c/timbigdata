import sys
import json
from geomet import wkt
from pprint import pprint

if __name__ == "__main__":
    #point = {'type': 'Point', 'coordinates': [116.4, 45.2, 11.1]}
    #pwkt = wkt.dumps(point, decimals=4)
    #print pwkt
    target = open('/media/sf_tim_bigdata/BARI/bari_grid_PROC.json', 'w')

    with open('/media/sf_tim_bigdata/BARI/bari_grid.json') as data_file:    
        data = json.load(data_file)
    pprint(data)
    for dat in data['features']:
        swkt = wkt.dumps(dat['geometry'])
        s = '{gridid:'+dat['properties']['id']+', geom:"'+ swkt  +'"}'
        print s
        target.write(s)
        target.write(',\n')
