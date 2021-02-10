import re
email="madhurinrevanna11@gamil.com sjjs@.com  @gami.com"
checkemail=re.findall("[\w._%+-]{1,20}@[\w.-]{2,20}.[A-Za-z]{2,3}",email)
print(checkemail)

text2="madhuri.revanna@gmail.com  @jdhkd.com  madhyru@gami"
findtext=re.findall("[\w.]{7}.[\w]{7}@[\w.]{5}.[\w.]{3}",text2)
print(findtext)

text3="madhuri.revanna@gmail.com    @jdhkd.com  mmm@gamil"
findtext2=re.findall("[\w._%+-]{1,20}@[\w.-]{2,20}.[A-za-z]{2,3}",text2)
print(findtext2)
lis=[1,2,3,4]
newlist=[x for x in lis if x==2]
print(newlist)

x=lambda a,b:a+b
print(x(1,2))