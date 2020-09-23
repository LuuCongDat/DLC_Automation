require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

$First_name = 'iTMS'
$Last_name = 'Huấn luyện viên'
$Job_title = 'QA'
$Date = '27/10/2025'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize
driver.find_element(id: 'first-name').send_keys($First_name)
driver.find_element(id:'last-name').send_keys($Last_name)
driver.find_element(id: 'job-title').send_keys($Job_title)
driver.find_element(id: 'radio-button-2').click
driver.find_element(id: 'checkbox-1').click

dropdown = driver.find_element(id: 'select-menu')
select_object = Selenium::WebDriver::Support::Select.new(dropdown)
select_object.select_by(:value, '2')

driver.find_element(id: 'datepicker').send_keys($Date)
driver.find_element(css: '.btn.btn-lg.btn-primary').click
driver.manage.timeouts.implicit_wait = 3

driver.quit
