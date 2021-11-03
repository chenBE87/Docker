import sys
import os
from selenium import webdriver
from time import sleep

opts = webdriver.FirefoxOptions()
opts.add_argument("--headless")
driver = webdriver.Firefox(options=opts)
driver.get(sys.argv[1])
sleep(1)

driver.get_screenshot_as_file("/tmp/output/screenshot.png")
driver.quit()
print("end...")