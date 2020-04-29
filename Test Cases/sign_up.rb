require 'selenium-webdriver'
require 'test/unit'
require '../Assertions/assert_sign_up'
require '../Base/base'
require '../Pages/Signup_Objects'

class SignUp < TestAutomationBase

  def testSignUpValid()

    @signupObject = SignupObjects.new(@@driver)
    @signupObject.clickOnSignup()

    @signupObject.enterUsername(@@config['username'])
    @signupObject.enterEmail(@@config['email'])
    @signupObject.enterPassword(@@config['password'])
    @signupObject.enterConfirmPassowrd(@@config['confirmPassword'])
    @signupObject.enterLinkedInURL(@@config['LinkedInURL'])
    @signupObject.enterTwitterURL(@@config['TwitterURL'])
    @signupObject.clickOnVerified()
    @signupObject.clickOnPremium()
    @signupObject.clickOnSave()

    assertObject = AssertSignUp.new
    flag = assertObject.testvalidateSignUp(@@driver,"Available Tuitions")
    assert_true(flag)

  end


  end