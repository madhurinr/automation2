#wrapping methods and variable in one entity is called encapsulation
#doing this way will reduce the risk of data distruction as is its enclosed and it prevents from accessing them from outside entiy
#ths is done using private and public keyword private is indicated as __

class plant:
    __name="rose plant"
    place="bang"
    def __init__(self,pcode):
        self.pincode=pcode
    def plantname(self):

        print("plant name is "+ self.__name)
    def plantname2(self,plant):
        self.__name=plant
        print("plant name is "+ self.__name)
#private method
    def __plantcell(self):
        print("dedicated cell")
    def cellname(self):
        self.__plantcell()


'''plantpbj=plant()
plantpbj.plantname()
plant.plantname2(plantpbj,"henna")
plantpbj.cellname()'''
plantpbj2=plant(345)
plantpbj3=plant(4352324)
print(plantpbj2.place,plantpbj2.pincode)
print(plantpbj3.place,plantpbj3.pincode)
plant.place="gadag"
plantpbj2.pincode=9999999
print(plantpbj2.place,plantpbj2.pincode)
print(plantpbj3.place,plantpbj3.pincode)