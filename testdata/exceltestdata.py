import openpyxl
wb=openpyxl.Workbook()
sh=wb.active
sh.title="userdetails"
def insertvalue():
    row=1
    col=1
    for  i  in range(row,5):
        for j in range(col,3):
            sh.cell(i,j,input())
    wb.save("D:/testdatasheet.xlsx")

