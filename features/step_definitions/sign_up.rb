# @driver = Selenium::WebDriver.for :chrome

Given("We navigate to the signup page") do
  @driver.navigate.to "http://ec2-52-15-34-101.us-east-2.compute.amazonaws.com/users/sign_up"
end

When("We enter firstname") do
  @driver.find_element(:id, 'user_first_name').send_keys("Abhishek")
end

And("We enter lastname") do
  @driver.find_element(:id, 'user_last_name').send_keys("Kanojia")
end

And("We enter email_address") do
  @driver.find_element(:id, 'user_email').send_keys("abhishek.kanojia+19@vinsol.com")
end

And("We enter user_password") do
  @driver.find_element(:id, 'user_password').send_keys("1111111")
end

And("We enter confirm_pass") do
  @driver.find_element(:id, 'user_password_confirmation').send_keys("1111111")
end

When("We click Sign up button") do
  @driver.find_element(:class, 'submit').click
end

Then("We should see success message") do
  # wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  element = wait.until { @driver.find_element(:class, 'positive') }
  expect(element.text).to eq('Thank you for signing up on Jumpsure. A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.')
end