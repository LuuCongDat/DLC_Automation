require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'
#Alert Box
driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
alert_button1= driver.find_element(css: '.btn.btn-default')
alert_button1.click
sleep 3
driver.switch_to.alert.accept
driver.quit
# #Alert Box confirm
driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
alert_button2= driver.find_element(css: '.btn.btn-default.btn-lg')
alert_button2.click
sleep 3
driver.switch_to.alert.dismiss
driver.quit
#Alert Box Prompt
driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
alert_button3= driver.find_element(xpath: "//button[contains(text(),'Click for Prompt Box')]")
alert_button3.click
driver.switch_to.alert.send_keys("LCD")
sleep 3
driver.switch_to.alert.accept
driver.quit
