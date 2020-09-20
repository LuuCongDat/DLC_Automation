require 'selenium-webdriver'
require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com.vn/'
search_bar = driver.find_element(name: 'q')
sleep 2
search_bar.send_keys 'ITMS Coaching'
sleep 2
driver.quit