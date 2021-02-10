import autoit
import time
def selectfile(url):
    url=str(url)
    #autoit.win_wait_active("Open", 10)
    autoit.control_focus("Open","Edit1")
    autoit.control_set_text("Open","Edit1",url)
    autoit.control_click("Open","Button1")
#selectfile("D:\\Madhuri\image\Start.png")


# autoit.run("notepad.exe")
# autoit.win_wait_active("[CLASS:Notepad]", 3)
# autoit.control_send("[CLASS:Notepad]", "Edit1", "hello world{!}")
# autoit.win_close("[CLASS:Notepad]")
# autoit.control_click("[Class:#32770]", "Button2")
