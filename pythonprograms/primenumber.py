#if number is divisable by 1 or tself is called prime number

#ex 19 is divisable by 19 and 1

num=int(input())
count=0
for i in range(1,num+1):
    if(num%i)==0:
        count=count+1
if count==2:
        print("its prime number")
else:
        print(("its not prime number"))

