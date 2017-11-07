Before do |scenario|
  @driver = Selenium::WebDriver.for :chrome
#   #Selenium::WebDriver.default_max_wait_time = 10
  @driver.manage.window.maximize
end

After do |scenario|
  @driver.quit
end

