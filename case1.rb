require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.timeouts.implicit_wait = 3
driver.quit