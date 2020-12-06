require 'selenium-webdriver'
require 'rspec'

$driver = Selenium::WebDriver.for :firefox

$i = 0
After do |scenario|
    $i = $i+1
    if $i==3
        $driver.quit
    end
end


