require 'selenium-webdriver'
require 'rspec'

Given(/^I open BBC homepage$/) do
	@driver = Selenium::WebDriver.for :firefox
	@driver.get("https://www.facebook.com/")
end

When(/^I click on sign in link$/) do
	@driver.find_element(:css, ".login_form_label_field>a").click
end

Then(/^sign in page opens$/) do
	sleep 5
	puts @driver.current_url
	expect(@driver.current_url).to eql("https://www.facebook.com/login/identify?ctx=recover&lwv=110")
end



