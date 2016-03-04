Given(/^I am registred in typeform \[email:(.*)\]$/) do |email|
	@email = email
end

When(/^I login with invalid credentials$/) do
	@browser = Watir::Browser.new :firefox
	@browser.goto('https://wwww.admin.typeform.com/login')

    sleep 3
	@browser.close

end