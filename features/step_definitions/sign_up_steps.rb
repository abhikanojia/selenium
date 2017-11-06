driver = Selenium::WebDriver.for :chrome

Given("We navigate to the signup page") do
  driver.navigate.to 'http://ec2-52-15-34-101.us-east-2.compute.amazonaws.com/users/sign_up'
end

Given("We enter firstname") do
  driver.find_element(:id, 'user_first_name').send_keys()
end

Given("We enter lastname") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("We enter confirm_pass") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("We click Sign up button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("We should see success message") do
  pending # Write code here that turns the phrase above into concrete actions
end