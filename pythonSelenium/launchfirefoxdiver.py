from selenium import webdriver
from selenium.webdriver.common.keys import Keys
driver=webdriver.Firefox(executable_path="C:\madhuri\drivers\geckodriver-v0.29.0-win64\geckodriver.exe")
driver.get("google.co.in")
title=driver.title()
print(title)
driver.find_element_by_xpath("//*[@aria-label='Search']").send_keys('car')

#driver.close()