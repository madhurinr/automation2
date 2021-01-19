varname="madhu" #global variable overidden by function variable
name="madhu loacl var" #local variable



def printname():
    global mynewname # gobal variable
    mynewname = "abhi"
    global varname
    varname="abhimadhu"
    print("myname in function" +mynewname)

printname()
print(varname)
print(name)

print(mynewname)
#override the global variable value

