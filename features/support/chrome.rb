require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome,
    options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless no-sandbox disable-gpu]))
end

Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome
