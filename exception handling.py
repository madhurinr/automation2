
try:#it allows to try to code to see if any error accoured
    x = int(input())
    if x<10:
        print("this try block")
except : # it handles the error
    print("this is except block")
else: # if not error accourend in try block then else block executed
    print("no error occured")
finally:# if is always executed even if their is true are falase
    print(("all blocks completed"))

# if x>10:
# #         print("x is greater then 10")
# # raise Exception ("is is my own exception")