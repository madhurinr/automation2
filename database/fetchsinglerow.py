import pyodbc
con=pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=localhost;DATABASE=AdventureWorksDW2008R2;UID=sa;PWD=abhi')
print(con)
cursor=con.cursor()
cursor.execute("select * from DimAccount")
alldata=cursor.fetchmany(2)
list=list(alldata[1])
print(list[2])
# mylist=iter(alldata)
# print(next(mylist))
# print(next(mylist))
# for i in alldata:
#     print(i)
# singlerow=alldata.fetchmany(5)

# print(singlerow)