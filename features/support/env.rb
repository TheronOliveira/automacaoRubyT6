
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'helper'
require_relative 'page_helper'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "ENVIRONMENT is runner >>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")
World(Helper)
World(Pages)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    Capybara.page.driver.browser.manage.window.maximize
    config.app_host = CONFIG['url_default']
    config.default_max_wait_time = 10
end