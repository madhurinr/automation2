import docx
d=docx.Document("D:\Madhuri\linux command.docx")
print(d.paragraphs[0].text)