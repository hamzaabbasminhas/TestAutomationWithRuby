require 'selenium-webdriver'
require 'test/unit'
require '../Assertions/assertCreateTuition'
require '../Base/base'
require '../Pages/Create_tutition_object'
require '../Test Cases/login'

class CreateTuition < TestAutomationBase

  def testCreateTutionValidCase

    login = Login.new("")
    flag = login.LoginValidCase()

    if (flag == true)
    obj = CreateTutitionObject.new(@@driver)
    obj.clickOnCreateTutitionButton()
    obj.enterTitle(@@config['title'])
    obj.enterDescription(@@config['description'])
    obj.enterLink(@@config['link'])
    obj.enterStartDate(@@config['sYear'],@@config['sMonth'],@@config['sDay'],@@config['sHour'], @@config['sMinute'])
    obj.enterEndDate(@@config['eYear'],@@config['eMonth'],@@config['eDay'],@@config['eHour'], @@config['eMinute'])
    obj.addStudents()
    obj.clickOnSave()
    sleep(2)
    @@driver.switch_to.alert.accept

    assertobj = AssertCreateTuition.new
    flag1 = false
    flag1 = assertobj.testvalidateCreateTuition(@@driver,"Available Tuitions")
    assert_true(flag1)
    end
  end

end
