require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox,
    options: Selenium::WebDriver::Firefox::Options.new(args: ['-headless', '-disable-gpu']))
end

Capybara.default_driver = :selenium_firefox
Capybara.javascript_driver = :selenium_firefox
