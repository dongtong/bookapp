Feature: User Signup

	User goes to signup page, which is only consists of email, password and password confirmation fields.
after signup, user is logged in and use the application.

	Scenario: User signup successfully via signup form
		Given I am a guest
		When I fill the signup form with valid data
		Then I should be signed up in application
		And I should be logged in application