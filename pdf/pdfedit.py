import os
import PyPDF2
#os.chdir("D:\Madhuri")
file=open("D:\Madhuri\SAFe certificate.pdf","rb")
reade=PyPDF2.PdfFileReader(file)
print(reade.numPages)
pagenum=reade.getPage(0)
pagenum.extractText()
print(pagenum)