Given(/^I am registred in typeform \[email:(.*)\]$/) do |email|
	@email = email
end

When(/^I login with invalid credentials$/) do
	@browser = Watir::Browser.new :firefox
	@browser.goto('https://wwww.admin.typeform.com/login')
	@browser.text_field(id: '_username').set(@email)
	@browser.text_field(id: '_password').set('broken_password')
	@browser.button(id: 'btnlogin').click

end

Then(/^I should get a login error message$/) do
  error = @browser.div(id: 'error').visible?
  expect(error).to eql(true)
  @browser.close
end
