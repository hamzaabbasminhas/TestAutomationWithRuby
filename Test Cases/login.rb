require 'selenium-webdriver'
require 'test/unit'
require '../Assertions/assert_sign_up'
require '../Base/base'
require '../Pages/Login_Objects'

class Login < TestAutomationBase


  def LoginValidCase()

    @loginObject = LoginObjects.new(@@driver)
    @loginObject.testEnterEmail(@@config['email'])
    @loginObject.testEnterPassword(@@config['password'])
    @loginObject.clickOnCheckBox()
    @loginObject.clickOnLoginButton()

    assertObject = AssertSignUp.new
    flag = assertObject.testvalidateSignUp(@@driver,"Available Tuitions")

    return flag

  end

end
