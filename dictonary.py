dic={"name":"madhu",
     "place":"bang",
     "dob":28}
print(dic["name"])
dic["name"]="vv"
print(dic["name"])
dic.update({"work":"none"})
print(dic["work"])
print(dic.keys())
print(dic.values())
print(dic.items())
print(dic.get("work"))
dic.pop("work")
print(dic.items())
print(dic.items())
dic2=dic.copy()
print("copyed items"+str(dic2.items()))
for i in dic2.values():
     print(i)
dic.popitem()
print(dic.items())
del dic["name"]
print(dic.items())
del dic

print(dic.items())
dic2=dic.copy()
print(dic2.items())



