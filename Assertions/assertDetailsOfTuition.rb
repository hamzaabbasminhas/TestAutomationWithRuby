require 'selenium-webdriver'
require 'test/unit'
require '../Base/base'

class AssertDetails

  def testAssertPageOpen(driver, expected)

    actual = driver.find_element(:xpath, "//b[contains(text(),'Title:')]").text
    flag = false
    if(actual == expected)

      flag =true

    end
    return flag
  end
end

