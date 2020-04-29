require 'selenium-webdriver'

class TuitionDetailsObject

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def clickOnShowButton
    @chromedriver.find_element(:xpath, "//tr[1]//td[7]//a[1]").click
  end

end