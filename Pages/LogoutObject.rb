require 'selenium-webdriver'

class LogoutObject

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def clickOnLogout
    @chromedriver.find_element(:xpath, "//a[contains(text(),'Logout')]").click
  end

end