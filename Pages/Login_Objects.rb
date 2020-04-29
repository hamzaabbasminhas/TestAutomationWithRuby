require 'selenium-webdriver'

class LoginObjects
  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def testEnterEmail(email)
    @chromedriver.find_element(:xpath, "//input[@id='exampleInputEmail1']").send_keys(email)
  end

  def testEnterPassword(password)
    @chromedriver.find_element(:xpath, "//input[@id='exampleInputPassword1']").send_keys(password)
  end

  def clickOnCheckBox()
    @chromedriver.find_element(:xpath, "//input[@id='exampleCheck1']").click
  end

  def clickOnLoginButton ()
    @chromedriver.find_element(:xpath, "//button[@class='btn btn-primary']").click
  end
end