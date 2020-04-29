require 'selenium-webdriver'

class SignupObjects

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def clickOnSignup()

    @chromedriver.find_element(:xpath, "//a[contains(text(),'Signup')]").click()
    sleep(5)
  end

  def enterUsername(username)
    @chromedriver.find_element(:xpath,"//input[@id='user_name']").clear()
    @chromedriver.find_element(:xpath,"//input[@id='user_name']").send_keys(username)
  end

  def enterEmail(email)
    @chromedriver.find_element(:xpath,"//input[@id='user_email']").clear()
    @chromedriver.find_element(:xpath,"//input[@id='user_email']").send_keys(email)
  end

  def enterPassword(password)
    @chromedriver.find_element(:xpath,"//input[@id='user_password']").clear()
    @chromedriver.find_element(:xpath,"//input[@id='user_password']").send_keys(password)
  end

  def enterConfirmPassowrd(confirm_password)
    @chromedriver.find_element(:xpath,"//input[@id='user_password_confirmation']").clear()
    @chromedriver.find_element(:xpath,"//input[@id='user_password_confirmation']").send_keys(confirm_password)
  end

  def enterLinkedInURL(linkedInURL)
    @chromedriver.find_element(:xpath,"//input[@id='user_linked_in']").clear()
    @chromedriver.find_element(:xpath,"//input[@id='user_linked_in']").send_keys(linkedInURL)
  end

  def enterTwitterURL(twitterURl)
    @chromedriver.find_element(:xpath,"//input[@id='user_twitter']").clear()
    @chromedriver.find_element(:xpath,"//input[@id='user_twitter']").send_keys("www.twitter.com")
  end

  def clickOnVerified()
    @chromedriver.find_element(:xpath, "//input[@id='user_verified']").click()
  end

  def clickOnPremium
    @chromedriver.find_element(:xpath, "//input[@id='user_premium']").click()
  end

  def clickOnSave()
    @chromedriver.find_element(:xpath, "//input[@name='commit']").click()
  end
end