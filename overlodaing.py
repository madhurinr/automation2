class person:
    def printfullname(self,fname,lname,mname=""):
        print("my name is  "+fname+ " "+ mname+ " " + lname)
    def lamdasum(self):
        x=lambda a :a+1
        print(x)

    def sum(self,a):
        return person.multiply(self)

    def lamdatest(self,a):
        x=lambda n :a+1*n
        return x
    def multiply(self,a):
        return a*1
personobj=person()
personobj.printfullname("madhuri","revanna")
personobj2=person()
personobj2.printfullname("arju","goudar","N ")
personobj2.lamdasum()
personobj2.sum(5)
ntotal=personobj2.lamdatest(2)
print(ntotal(3))
print(personobj2.sum()(2))


