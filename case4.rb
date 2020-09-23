require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.maximize
puts "Url is: #{driver.current_url}"
driver.manage.timeouts.implicit_wait = 3
driver.quit