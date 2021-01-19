class delet:
    def __del__(self):
        print("object destoroyed")

obj=delet()
obj2=delet()
del obj
