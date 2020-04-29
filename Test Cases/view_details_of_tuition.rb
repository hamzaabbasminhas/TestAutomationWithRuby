require 'selenium-webdriver'
require 'test/unit'
require '../Assertions/assertDetailsOfTuition'
require '../Base/base'
require '../Pages/tuition_details_object'
require '../Test Cases/login'

class ViewDetailsOfTuition < TestAutomationBase

  def testDetails()
    login = Login.new("")
    flag = login.LoginValidCase()

    if (flag == true)
      obj = TuitionDetailsObject.new(@@driver)
      obj.clickOnShowButton()
      obj1 = AssertDetails.new
      flag1 = obj1.testAssertPageOpen(@@driver,"Title")
      assert_true(flag1)

      end
  end

end