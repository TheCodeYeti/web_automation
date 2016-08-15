When(/^I hit the "([^"]*)" key$/) do |key|
  @browser.send_keys key
end
