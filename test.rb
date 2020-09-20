require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'
 
browser = Selenium::WebDriver.for :chrome
html_file = "C:/Users/LCD/Desktop/Automation/test.html"
browser.get "file:///" + html_file 
sleep 5
browser.quit