When(/^I click on the "([^"]*)" with the "([^"]*)" "([^"]*)"$/) do |element_type, selector_type, selector|
  selector_type.gsub!(/-/, '_')
  case element_type.downcase
  when "button"
    @browser.button({selector_type.downcase.to_sym => selector.downcase}).click
  when "div"
    @browser.div({selector_type.downcase.to_sym => selector.downcase}).click
  when "h5"
    @browser.h5({selector_type.downcase.to_sym => selector.downcase}).click
  when "label"
    @browser.label({selector_type.downcase.to_sym => selector.downcase}).click
  when "link"
    @browser.a({selector_type.downcase.to_sym => selector.downcase}).click
  end
end
