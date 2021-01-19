#single ineritance
class A:
 def __init__(self,fname,fplace):
    self.fname=fname
    self.fplace=fplace

 def printname(self):
     print("my name is " +self.fname)
class B(A):
    def __init__(self,fname,fplace,id):
        super(). __init__(fname,fplace)
        self.id=id
    def printid(self):
        print("myid is " + str(self.id))
#multilevel ineritance
class c(B):
    def __init__(self,fname,fplace,id,hobby):
        B. __init__(self,fname,fplace,id)
        self.hobby=hobby
    def printdetails(self):
         print("my hobby is " +self.hobby + " my id is " +str(self.id) + " i am from " +self.fplace)
class d(c):
    def __init__(self,fname,fplace,id,hobby,lang):
        self.lang=lang
        c. __init__(self,fname,fplace,id,hobby)
    def inherite(self):
        print("final class")

Aobj=A("madhuri","bang")
Aobj.printname()
Bobj=B("amma","durga",123)
Bobj.printid()
cobj=c(Bobj.fname,Bobj.fplace,Bobj.id,"dancing")
cobj.printdetails()
dobj=d("mm",'var',33,'cricket','kannada')
dobj.printdetails()

