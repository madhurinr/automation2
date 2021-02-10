import autoit
# autoit.run("notepad.exe")
# autoit.control_send("Untitled - Notepad","Edit1","this is the notepad")
# autoit.win_close("Untitled - Notepad")

autoit.control_focus("Open","Edit1")
autoit.control_set_text("Open","Edit1","D:\Madhuri\study doc\Refurbished CIS Form.xlsm")
autoit.control_click("Open","Button1")