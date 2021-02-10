arr=[4,6,5,63,2]
print(min(arr))
print(max(arr))
val=arr[0]
len=len(arr)
for j in range(0,len):
    if arr[j]>val:
        val=arr[j]
print(val)

#mimium
mimnum=arr[0]
for j in range(1,len):
    if arr[j]<mimnum:
        mimnum=arr[j]
print(mimnum)