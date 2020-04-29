require 'selenium-webdriver'
require 'test/unit'
require '../Base/base'
require '../Pages/DeleteTuitionObject'
require '../Test Cases/login'

class DeleteTuition < TestAutomationBase

  def testDelete()
    login = Login.new("")
    flag = login.LoginValidCase()
    obj =  DeleteTuitionObject.new(@@driver)

    if (flag == true)

      obj.clickOnDeleteButton()
      sleep(2)
      @@driver.switch_to.alert.accept()

    end



  end
end