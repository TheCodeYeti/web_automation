When(/^I hit the "([^"]*)" key$/) do |key|
  key = :return if key.downcase === "enter"
  @browser.send_keys key
end
