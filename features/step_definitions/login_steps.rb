Given('The login page is opened successfully') do
    $driver.get "http://the-internet.herokuapp.com/login"
end

When('user input {string} for the username and {string} for the password') do |string, string2|
    $driver.find_element(:id, "username").send_keys(string)
    $driver.find_element(:id, "password").send_keys(string2)
    $driver.find_element(:xpath, "//i[contains(text(),'Login')]").click
end

Then('a message {string} should be displayed') do |string|
    Actual_message = $driver.find_element(:id, "flash").text.delete("\n")
    expect(Actual_message).to eql(string)
    
end    
