Feature: signup

  Scenario: sign up as a new user
	Given I am a new demo TF user
	When I save my acount and I introduce unregistred name, email, passsword [name:holahola] [email:holahola7@typeform.com] [password:typeform]
	Then I should properly sign up