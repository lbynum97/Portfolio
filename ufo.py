import requests
import urllib.request
import time
from bs4 import BeautifulSoup

box = []
f = open("ufo_data","w+")

# Web Scraping
site = requests.get("http://www.nuforc.org/webreports/ndxloc.html")

#Parse through the HTML
soup = BeautifulSoup(site.text, "html.parser")
link = soup.findAll("a")


for a in range(len(link))[1:]:
    url = link[a]["href"]
    download_url = "http://www.cs.umd.edu/~golbeck/INST326/" + a

    response = urllib.request.urlopen(download_url)
    data = response.read()
    f_data = data.decode("utf-8")
    f.write(f_data)
    time.sleep(1)


f.close()
