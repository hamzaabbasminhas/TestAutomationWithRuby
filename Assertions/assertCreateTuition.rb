require 'selenium-webdriver'
require 'test/unit'
require '../Base/base'

class AssertCreateTuition

  def testvalidateCreateTuition(driver, expected)
    actual = driver.find_element(:xpath,"//h1[contains(text(),'Available Tuitions')]").text
    puts actual
    flag = false
    if(actual == expected)
      flag = true
    end
    return flag
  end
end