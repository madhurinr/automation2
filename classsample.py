class employee:
    def __init__(self):
        self.name=None
        self.id=None
        self.salary=None
    def __str__(self):
        '''ass an object is created along will invlivikig init method and
         it invoked str method when ever oject is invocked
         __init__ is invoked when object is create
         __str__ is invoked when refer reference object is invoked
         __del__ is detets the objects when object is invoked '''
        pass
#return "hello"

    def set_empdetails(self,empname,empid,empsalary,pcity):
        self.name=empname
        self.id =empid
        self.salary =empsalary
        self.city=pcity
    def get_empdetails(self):
        return self.name,self.id,self.salary
obj1=employee()
obj1.set_empdetails("mad",123,2500000,"pune")
print(obj1.get_empdetails())

class salary:
    def __init__(self):
        pass
    def calculatesalary(self,psalary):
         print(psalary)
         print(psalary.salary)
         return psalary.salary/12
obj2=salary()
print(obj2.calculatesalary(obj1))

class pet:
    def __init__(self,pname,Pownerobj):
        self.name=pname
        self.ownerobj=Pownerobj

    def print_petdetails(self):
        print(self.name)
    def print_petownername(self):
        print(self.ownerobj.name)
    def print_ownercityname(self):
        print(self.ownerobj.city)
petobj1=pet("moow",obj1)
petobj1.print_petdetails()
petobj1.print_petownername()
petobj1.print_ownercityname()

employeeobj2=employee()
employeeobj2.set_empdetails("mallikarjun",333,3500000,"gadag")
employee2pet=pet("siddhu",employeeobj2)

print("name of pet is "+ employee2pet.name + "its owner is "+ employee2pet.ownerobj.name)

empleeobj3=employee()
empleeobj3.set_empdetails("anna",342,3212345,"andra")
petobj3=pet("wow",empleeobj3)
print("name of pet is " +petobj3.name + " and its owner city is " + empleeobj3.city + " " +petobj3.ownerobj.name)
petobj3.print_petownername()

