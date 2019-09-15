import requests

import requests

lock = []

new = open("new_cities.txt", "w+")
cities = open("cities.txt", "r")


for a in cities:

    if a.isdigit():
        continue
    else:
        key = "xlDIApUaMiFJ4r4fXx369k1HzOZnA7Je"
        location = a

        url = "http://open.mapquestapi.com/geocoding/v1/address?outFormat=CSV&key=" + key + "&location=" + location
        data = requests.get(url)
        print(data)
        num = 0
        for line in data.text.splitlines():
            if num == 1:
                d = line.split(",")
                lat = d[6]
                lat = lat.replace('"', '')
                lon = d[7]
                lon = lon.replace('"', '')
                print(lat + "," + lon + "," + a[-4:])
                new.write(lat + "," + lon + "," + a[-4:])
            num = num + 1