Given(/^I am a guest$/) do
  			
end

When(/^I fill the signup form with valid data$/) do
  	visit("/signup")
  	fill_in "user_email", with: "example@gmail.com"
  	fill_in "user_password", with: "password"
  	fill_in "user_password_confirmation", with: "password"
  	click_button "Sign Up"	
end

# Then(/^I should be signed up in application$/) do
  			
# end

# Then(/^I should be logged in application$/) do
		  
# end