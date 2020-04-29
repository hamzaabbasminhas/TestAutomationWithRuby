require 'selenium-webdriver'
require 'test/unit'
require '../Base/base'
require '../Pages/LogoutObject'
require '../Test Cases/login'
require '../Assertions/assert_logout'

class Logout < TestAutomationBase

  def testLogout()
    login = Login.new("")
    flag = login.LoginValidCase()
    obj =  LogoutObject.new(@@driver)

    if (flag == true)

      obj.clickOnLogout()
      obj1 = AssertLogout.new
      flag1 = false
      flag1 = obj1.testAssertLogout(@@driver)
      assert_true(flag1)

    end
  end
end