name="madhuri"
leng=len(name)
# for i in range(leng-1,-1,-1):
#     print(i)
#     print(name[i])


count=2
while count<7:
    print(name[count])
    count=count+1

count1=11
while count1>=0:
    print(count1)
    count1=count1-3

string="madam"
len=len(string)
print("lengh"+str(len))
reversename=""
for i in range(len-1,-1,-1):
    reversename=reversename+string[i]
    if reversename==string:
        print("its a palandrom")
print(reversename)

print(string[-1:-5])

