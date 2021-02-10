from selenium import webdriver
from selenium.webdriver.common.keys import Keys
driver=webdriver.Chrome(executable_path="C:\madhuri\drivers\chromedriver.exe")
driver.get("https://www.google.co.in/")
print(driver.title)

driver.find_element_by_xpath("//*[@aria-label='Search']").send_keys('car')
#driver.close()
