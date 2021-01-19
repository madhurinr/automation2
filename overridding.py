#overridding
class person:
    def __init__(self,fname):
        self.fname=fname
    def printname(self):
        return self.fname
class employee(person):
    def __init__(self,fname):
        super().__init__(fname)

    def printname(self):
        return self.fname + "hello"

empobj=employee("mmmm")
x=empobj.printname()
print(x)