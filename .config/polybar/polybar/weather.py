#!/bin/python

import urllib.request, json

city = "Prague, CZ"
api_key = "4d3403c3279258f6f2a1efa7cd467c5d"
units = "Metric"
unit_key = "C"

weather = eval(str(urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?q={}&APPID={}&units={}".format(city, api_key, units)).read())[2:-1])

info = weather["weather"][0]["description"].capitalize()
temp = int(float(weather["main"]["temp"]))

#print("%s, %i °%s" % (info, temp, unit_key))
print("%i°%s" % (temp, unit_key))
