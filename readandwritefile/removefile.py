import os
try:
    if os.path.exists("D:\\"):
        os.remove("new4.txt")
except FileNotFoundError:
    print("file not found")
# else:
#     print("file found and its deleted")