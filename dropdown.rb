require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.practiceselenium.com/check-out.html'
driver.find_element(id: 'email').send_keys('nhalenloc@gmail.com')
driver.find_element(id: 'name').send_keys('Nguyen Hoang Dung')
driver.find_element(id: 'address').send_keys('Ngoc thien- Tan Yen- Bac Giang')
#dropdown
options= driver.find_element(id: 'card_type')
select_object = Selenium::WebDriver::Support::Select.new(options)
#Select by text
#select_object.select_by(:text, 'Visa')
#Select by index
select_object.select_by(:index, 1)
driver.find_element(id: 'card_number').send_keys('19001091')
driver.find_element(id: 'cardholder_name').send_keys('Dung Nguyen Hoang')
driver.find_element(id: 'verification_code').send_keys('11121112')
driver.find_element(css: '.btn.btn-primary').click
driver.quit
