from bs4 import BeautifulSoup


file = open("ufo_data", "r")
bfile = open("cities.txt", "w+")
location = []
places = []
d = []
box = []
dic = {}

soup = BeautifulSoup(file, "html.parser")

info = soup.findAll("tr")

for a in info[1:]:
    location.append(a.text)

for element in location[2:]:
    data = element.split("\n")
    places.append(data)

for i in places[2:]:
    if i[3] != '':
        cities = i[2] + "," + i[3]
        d.append(cities)

for i in range(0, len(d)):
    if d[i] in dic:
        dic[d[i]] += 1

    else:
        dic[d[i]] = 1


for a,b in dic.items():
    all = str(a) + "   " +  str(b)
    box.append(all)
final = "\n".join(box)
bfile.write(final)

bfile.close()
file.close()

