a='madhu'
b=33
c=56.5

#approach1 pass use %
'''%d--> digits
%s-->string
%f or %g--> float'''
print("my name is %s and my age is %d and my weight is %g" %(a, b, c))

#approach 2 use {}
print("my name is {} my age is {} my weight is {}".format(a,b,c))
#approach 3 use {} and index
print("my name is {1} my age is {0} my weight is {2}".format(b,a,c))