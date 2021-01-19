#abstract class are the class with one or more abstract method ,and these abstract method dont have implementation ,can not ceate object or initialse
#these abstract class ,subclass should be created and called methods to add implemetation , ABC is built in absctract  class
from abc import ABC,abstractmethod
class Abscalss(ABC):
    @abstractmethod
    def A(self):
        pass
    def V(self):
        pass
class c(Abscalss):
    def A(self):
        print("hello")
    def v(self):
        print("madd")
cobj=c()
cobj.A()
cobj.v()
