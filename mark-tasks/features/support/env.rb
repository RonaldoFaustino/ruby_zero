require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'
require 'capybara/poltergeist'

$env = ENV['BROWSER']
#$browser = ENV['BROWSER']


Capybara.register_driver :selenium do |app|
   if BROWSER.eql?('remote')
      Capybara::
              Selenium::
              Driver.new(app, browser: :remote,
                       url: 'http://selenium-hub:4444/wd/hub',
                         desired_capabilities: Selenium::
                                 WebDriver::Remote::Capabilities.chrome(
                             'chromeOptions' => { args: %w[window-size=1366,768] }
                         ))
    elsif BROWSER.eql?('firefox')
      Capybara::
              Selenium::
              Driver.new(app, browser: :firefox)
    else
      Capybara::
              Selenium::
              Driver.new(app, browser: :chrome,
                         desired_capabilities: Selenium::
                                 WebDriver::Remote::Capabilities.chrome(
                             'chromeOptions' => { args: ['--headless disable-gpu
                          --window-size=1024,768 --no-sandbox'] }
                         ))
    end
  end


#$headless = ENV['HEADLESS']

#if $headless
#  Capybara.register_driver :selenium do |app|
#    Capybara::Poltergeist::Driver.new(app, js_errors: false)
#    end
#end

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