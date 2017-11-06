Feature: User Signup
Scenario:
  Given We navigate to the signup page
  And We enter firstname
  And We enter lastname
  And We enter email
  And We enter password
  And We enter confirm_pass
  Then We click Sign up button
  Then We should see success message