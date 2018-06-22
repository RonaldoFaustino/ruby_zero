require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'

$env = ENV['BROWSER']

#Capybara.configure do |config|
#    config.default_driver = :selenium
#    config.app_host = 'https://marktasks.herokuapp.com'
#end

Capybara.configure do |config|
            
    if $env == 'chrome'
        config.default_driver = :selenium_chrome
    elsif $env == 'chrome_headless'
        config.default_driver = :selenium_chrome_headless
    else
        config.default_driver = :selenium
    end
    config.app_host = 'https://marktasks.herokuapp.com'
end

#Capybara.configure do |config|
#    config.default_driver = :selenium
#    config.app_host = 'https://marktasks.herokuapp.com'
#end

Capybara.default_max_wait_time = 5