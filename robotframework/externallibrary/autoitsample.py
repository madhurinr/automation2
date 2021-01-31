import autoit
def selectfile():
    #autoit.win_wait_active("Open", 10)
    autoit.control_focus("Open","Edit1")
    autoit.control_set_text("Open","Edit1","D:\Madhuri\study doc\Screenshot_1.png")
    autoit.control_click("Open","Button1")



# autoit.run("notepad.exe")
# autoit.win_wait_active("[CLASS:Notepad]", 3)
# autoit.control_send("[CLASS:Notepad]", "Edit1", "hello world{!}")
# autoit.win_close("[CLASS:Notepad]")
# autoit.control_click("[Class:#32770]", "Button2")
