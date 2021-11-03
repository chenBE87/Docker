import sys
import os
import requests
from selenium import webdriver
from time import sleep

# prepare web driver instance
opts = webdriver.FirefoxOptions()
opts.add_argument("--headless")
driver = webdriver.Firefox(options=opts)

# check URL. print error message if URL is blank/invalid
req = requests.get(sys.argv[1])
if req.status_code == requests.codes['ok']:
    # get URL vie Selenium
    driver.get(sys.argv[1])
    sleep(1)
    # take screenshot and save in specific location ( for Docker usage )
    driver.get_screenshot_as_file("/tmp/output/screenshot.png")
    # exit driver
    driver.quit()
    print("end...")
else:
    # page is invalid
    print('invalid web page!!!!')