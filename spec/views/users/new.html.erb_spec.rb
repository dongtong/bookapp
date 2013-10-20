require 'spec_helper'

describe "users/new.html.erb" do
	before :each do
		# if has not as_new_record, the record will treat as updated record
		#user = mock_model("User", email: "example@gmail.com").as_new_record 
		user = mock_model("User").as_new_record.as_null_object
		assign(:user, user) 
		render
	end
	it "has signup form" do
		expect(rendered).to have_selector('form#signup')
	end
	it "has email field" do
		expect(rendered).to have_selector('form #user_email')
	end
	it "has password field" do
		expect(rendered).to have_selector('form #user_password')
	end
	it "has password confirmation field" do
		expect(rendered).to have_selector('form #user_password_confirmation')
	end
	it "has signup button" do
		expect(rendered).to have_selector('form input[type="submit"]')
	end
end