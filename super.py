class A:
 def __init__(self,fname,fplace):
    self.fname=fname
    self.fplace=fplace

 def printname(self):
     print("my name is " +self.fname)
class B(A):
    def __init__(self,fname,fplace,id):
        self.id = id
        super(). __init__(fname,fplace)

    def printid(self):
        print("myid is " + str(self.id))
aobj=A("madhuri","bang")
aobj.printname()
bobj=B("arju","pune","12")
bobj.printname()