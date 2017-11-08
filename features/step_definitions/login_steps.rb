@driver = Selenium::WebDriver.for :chrome

Given("We navigate to the home page") do
  driver.navigate.to 'http://ec2-52-15-34-101.us-east-2.compute.amazonaws.com/users/sign_in'
end

And("We enter email") do
  driver.find_element(:id, 'user_email').send_keys("abhishek.kanojia+1@vinsol.com")
end

And("We enter password") do
  driver.find_element(:id, 'user_password').send_keys("1111111")
end

Then("We click login button") do
  driver.find_element(:class, 'submit').click
end

Then("We should see dashboard") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  begin
    element = wait.until { driver.find_element(:class => "positive") }
    expect(element.text).to eq('Signed in successfully.')
  ensure
    driver.quit
  end
end
