class employee:
    def __init__(self):#local objects ths constorictor is invoked when ever object is created
        #convert to class objects ,self refers to refernce to current calls this valrible and functions belongs to
        self.name=None
        self.empid=None
        self.empsal=None
        self.place=None

    def set_empname(self,ipname):
        self.name=ipname
    def get_empname(self):
        return self.name
    def Print_salary(self):
        print("salary for the employee " + self.name + "is " + self.empsal)

#create refernce value to class
c1=employee()
c1.set_empname("madhuri")
print("emp name is "+ c1.get_empname())

