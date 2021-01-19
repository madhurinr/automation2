def sum(a,b):
    print(a+b)
sum(2,3)

def argtest(*args):
    print("my name is "+args[0])
argtest("ma","ff")
def keword(**ifo):
    print("my place is"+ ifo["place"])
keword(name='madhu',age=33, place="bang")

name=['mad','vini','viji']
def loop(namelist):
    for i in namelist:
        print("these are the names" +i)
loop(name)

# defualt paramater
def test(country="norway"):
    print("country name is "+ country)

test("india")
test("china")
test()

#retun value
def add(x,y):
    return x+y
sum=add(4,5)
print(sum)
#pass statement
def hello():
    pass
hello()