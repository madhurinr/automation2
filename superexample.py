class Person:
    def __init__(self, fname, lname):
        self.firstname = fname
        self.lastname = lname

    def printname(self):
        print(self.firstname, self.lastname)


class Employee:
    def __init__(self, id):
        self.employid = id

    def addsalary(self, psalary):
        self.salary = psalary
        print("my first name is " + self.firstname + " " + "salary " + self.salary)


class Student(Person):
    def __init__(self, fname, lname, id):
        super().__init__(fname, lname)
        Employee.__init__(self, id)
        #Employee.addsalary(self, "123")


    def printname(self):
        print(self.firstname, self.lastname, self.employid, self.salary)


x = Student("Mike", "Olsen", 22)

Employee.addsalary(x, "13423")

y = Student("JOHE", "BELA", 3422)

Employee.addsalary(y, "25000")