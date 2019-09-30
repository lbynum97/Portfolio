import re
file = open("cities_n.txt")
jsfile = open("latlaon.js", "w")

data = []
more = []

for a in file.readlines()[1:]:
    op = a.split("\t")
    data.append(op)

# print(data)

for a in data:
    more.append([float(a[0]), float(a[1]), a[2].replace("\n", "")])

print(more)