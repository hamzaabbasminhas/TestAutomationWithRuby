require 'selenium-webdriver'
require 'yaml'
require 'test/unit'

class TestAutomationBase < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver"
    @@config = YAML.load_file'../Configuration/config.yml'
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
    @@driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
    @@driver.manage.timeouts.implicit_wait = 7
    @@driver.manage.window.maximize()
    @@driver.navigate.to(@@config['applicationURL'])

  end

  def teardown
    @@driver.quit
  end

end
