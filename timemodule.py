import datetime
import function
import inheritence as i
from inheritence import B
from function import *
from function import add

x=datetime.datetime.now()
print(x)
print(x.year)
print(x.strftime("%A")) # --. this function prints date in readable for mate

#create date
y=datetime.datetime(1987,7,28)
print(y)
# s=function.sum(2,3)
# print(s)
print(dir(i))
obj=i.A("mad","bang")
obj.printname()
obj2=B("m","g",222)
obj2.id