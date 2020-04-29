require 'selenium-webdriver'
require 'test/unit'
require '../Base/base'

class AssertEdit

  def testAssertEditTitle(driver, expected)

    actual = driver.find_element(:xpath, "/html[1]/body[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]").text
    flag = false
    if(actual == expected)

      flag =true

    end
    return flag
  end
end

