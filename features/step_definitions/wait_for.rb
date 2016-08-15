Then(/^I wait for the "([^"]*)" "([^"]*)" to load$/) do |selector, element|
  case element
  when "div"
    until @browser.div(id: selector).exists? do sleep 1 end
  end

end
