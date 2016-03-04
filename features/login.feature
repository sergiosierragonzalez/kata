Feature: login

Scenario: login with invalid credentials

	Given I am registred in typeform [email:josefina@typeform.com]
	When I login with invalid credentials
	Then I should get a login error message
