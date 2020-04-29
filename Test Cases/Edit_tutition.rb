require 'selenium-webdriver'
require 'test/unit'
require '../Assertions/AssertEditOfTutiton'
require '../Base/base'
require '../Pages/edit_tuition_object'
require '../Test Cases/login'

class EditDetailsOfTuition < TestAutomationBase

  def testEdit()
    login = Login.new("")
    flag = login.LoginValidCase()
    obj =  EditTuitionObject.new(@@driver)

    if (flag == true)

      obj.clickOnEditButton()
      obj.editTitle(@@config['editTitle'])
      obj.clickOnSave
      sleep(3)
      @@driver.switch_to.alert.accept()

      assertObj = AssertEdit.new()
      flag1 = false
      flag1 = assertObj.testAssertEditTitle(@@driver,@@config['editTitle'])

      assert_true(flag1)
    end

  end

end
