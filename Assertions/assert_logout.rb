require 'selenium-webdriver'
require 'selenium-webdriver'
require 'test/unit'
require '../Base/base'

class AssertLogout

  def testAssertLogout(driver)
    actual = driver.find_element(:xpath, " //h1[contains(text(),'Login')]").text
    flag = false
    if(actual == 'Login')
      flag = true

    end

    return flag
  end

end