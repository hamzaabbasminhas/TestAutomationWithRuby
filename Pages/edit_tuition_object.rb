require 'selenium-webdriver'

class EditTuitionObject

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def clickOnEditButton
    @chromedriver.find_element(:xpath, "//tr[1]//td[8]//a[1]").click
  end

  def editTitle(title)
    @chromedriver.find_element(:xpath,"//input[@id='tuition_title']" ).clear
    @chromedriver.find_element(:xpath, "//input[@id='tuition_title']").send_keys(title)
  end

  def clickOnSave
    @chromedriver.find_element(:xpath,"//input[@name='commit']").click()
  end

end