Then(/^I click on the "([^"]*)" "([^"]*)"$/) do |selector, element|
  case element.downcase
  when "div"
    @browser.div(class: selector.downcase)

  end
end
