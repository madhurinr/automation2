#sample 1
a=20
if a>30:
    print("a is greater")
else:
    print("a is smaller")
#sample2 True is sent is ifcondition
if True:
    print("a is smaller")
else:
    print("a is greater")

#sample3
if 1:
    print("a is greater")
else:
    print("a is smaller")
#sample 4
if 0:
    print("a is greater")
else:
    print("a is smaller")
#single line if statement
a=4
b=3
c=7
print(a+b) if a>b else print(b+c)

#multiple statement
{print(a),print(b)} if True else{print(c)}

#short hand if
if a>b: print("a is greater")

#nested if
if a>b:
    print("a is greater")
    if a<c:
        print("c is greater")
else:
    print("contion validated")
#and operator
if a>b and a<c:
    print("a is greater value ")
#or operator
if a>b or a>c:
    print("a is greater")

#pass statement
#if condtion has to be declared without any contion then use pass statement
if a>b:
   pass
   print("nothing")