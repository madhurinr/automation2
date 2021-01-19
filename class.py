x,y=10,30
class person:
    a,b=10,20
    def name(self,name):
        self.name=name
        print(self.name)
        print(self.a+self.b)
    def sum(self):
        print(x+y)
    @staticmethod
    def add(xy):
        print("this is static menhod " + str(xy))
obj=person()
obj.sum()# named object
person.add(10)
obj.name("madhuri")
print("second obj")
ob2=person()
ob2.name("arju")

#nameless object
person().name("i am nameless")
#print memory location of object
print(id(obj))
print(id(ob2))