import pyodbc
dbcon=pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=localhost;DATABASE=AdventureWorksDW2008R2;UID=sa;PWD=abhi')
cursor=dbcon.cursor()
cursor.execute("select * from dbo.DimCurrency")
firstrow=cursor.fetchone()
print(firstrow[1])
many=cursor.fetchmany(5)
print(many)
for i in many:
    print(list(i)[1])