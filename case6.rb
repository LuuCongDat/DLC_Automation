require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.maximize
driver.find_element(name: 'q').send_keys('iTMS Coaching')
driver.find_element(name: 'btnK').click
driver.manage.timeouts.implicit_wait = 3
puts "Page title is: #{driver.title}"
driver.quit