
req 'capybara/cucumber'
req 'capybara/rspec'
req 'selenium-webdriver'
req 'site_prism'
req 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host: "http://www.google.com"
    config.default_max_time = 10
end