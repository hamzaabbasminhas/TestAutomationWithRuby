require 'selenium-webdriver'

class CreateTutitionObject

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def clickOnCreateTutitionButton()

    @chromedriver.find_element(:xpath,"//a[contains(text(),'Create Tuition')]").click

  end

  def enterTitle(title)
    @chromedriver.find_element(:xpath,"//input[@id='tuition_title']").send_keys(title)
  end

  def enterDescription(description)
    @chromedriver.find_element(:xpath,"//textarea[@id='tuition_description']").send_keys(description)
  end

  def enterLink(link)
    @chromedriver.find_element(:xpath, "//input[@id='tuition_meeting_link']").send_keys(link)
  end

  def enterStartDate(year, month, day, hour, minute)

    @chromedriver.find_element(:xpath , "//select[@id='tuition_start_at_1i']//option[contains(text(),year)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_start_at_2i']//option[contains(text(),month)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_start_at_3i']//option[contains(text(),day)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_start_at_4i']//option[contains(text(),hour)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_start_at_1i']//option[contains(text(),minute)]").click()
  end

  def enterEndDate(year, month, day, hour, minute)

    @chromedriver.find_element(:xpath , "//select[@id='tuition_end_at_1i']//option[contains(text(),year)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_end_at_2i']//option[contains(text(),month)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_end_at_3i']//option[contains(text(),day)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_end_at_4i']//option[contains(text(),hour)]").click()
    @chromedriver.find_element(:xpath , "//select[@id='tuition_end_at_5i']//option[contains(text(),minute)]").click()
  end

  def addStudents()
    @chromedriver.find_element(:xpath,"//div[@class='container']//div[1]").click
  end

  def clickOnSave()
    @chromedriver.find_element(:xpath,"//input[@name='commit']").click
  end


end