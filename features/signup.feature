Feature: User Signup
Scenario:
  Given We navigate to the signup page
  When We enter firstname
  And We enter lastname
  And We enter email_address
  And We enter user_password
  And We enter confirm_pass
  When We click Sign up button
  Then We should see success message