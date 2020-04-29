require 'selenium-webdriver'

class DeleteTuitionObject

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def clickOnDeleteButton()
    @chromedriver.find_element(:xpath,"//tr[1]//td[9]//a[1]").click()
  end

  end
