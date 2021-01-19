#lambda function is anomonus function
#its best to be used in another function when we need to use uknown function ofr short time
x=lambda a,b:a*b
print(x(2,3))

def sum(a,b):
    return lambda n:(a+b+n)
sumno=sum(1,2)
print(sumno(1))