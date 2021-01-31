import pyodbc as db
connect=db.connect(('DRIVER={ODBC Driver 17 for SQL Server};SERVER=localhost;DATABASE=AdventureWorksDW2008R2;UID=sa;PWD=abhi'))
cursor=connect.cursor()
#cursor is a class instance used to invok the methods and execute sqlstatements .
cursor.execute('SELECT * FROM DimAccount')

for row in cursor:
    print(row[0])