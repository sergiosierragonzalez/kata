Given(/^I am a new demo TF user$/) do 
	@browser = Watir::Browser.new :firefox
	@browser.goto('https://admin.stage.typeform.com/signup')
end

When(/^I save my acount and I introduce unregistred name, email, passsword \[name:(.*)\] \[email:(.*)\] \[password:(.*)\]$/) do |name, email, password| 
	@name = name
	@email = email
	@password = password

	@browser.img(class: 'close-button').click
    @browser.div(id: 'save-account-button').click
    @browser.text_field(id: 'signup_owner_alias').set(@name)
	@browser.text_field(id: 'signup_owner_email').set(@email)
	@browser.text_field(id: 'signup_owner_password').set(@password)
	@browser.button(id: 'btnsubmit').click


end

Then(/^I should properly sign up$/) do
	@browser.img(id: 'avatar-arrow').wait_until_present

	expect(@browser.img(id: 'avatar-arrow').visible?).to eql(true)
	 @browser.close

end
