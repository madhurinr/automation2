a,b=1,2
class A:
    a,b=10,20
    def printsomething(self):
        print("helo")
class B(A):
    def add(self,a,b):
        print(a+b) #access method variable
        print((self.a+self.b)) #acess class A variable
        print(super().a +super().b) #acess class A variable which is super
        print(globals()['a']+globals()['b']) #acess global variable
        super().printsomething() #acess parent class mehtod
obja=A()
objB=B()
objB.printsomething()
objB.add(100,200)

