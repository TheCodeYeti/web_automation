Then(/^I click on the "([^"]*)" with the "([^"]*)" "([^"]*)"$/) do |element_type, selector_type, selector|
  selector_type.gsub!(/-/, '_')
  case element_type.downcase
  when "div"
    @browser.div({selector_type.downcase.to_sym => selector.downcase}).when_present.click
  when "button"
    @browser.button({selector_type.downcase.to_sym => selector.downcase}).when_present.click
  end
  # binding.pry
end
