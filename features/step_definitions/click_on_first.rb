When(/^I click on the first "([^"]*)" with the "([^"]*)" "([^"]*)"$/) do |element_type, selector_type, selector|
  selector_type.gsub!(/-/, '_')
  binding.pry
  case element_type.downcase
  when "button"
    @browser.buttons({selector_type.downcase.to_sym => selector.downcase}).first.click
  when "div"
    @browser.divs({selector_type.downcase.to_sym => selector.downcase}).first.click
  when "h5"
    @browser.h5s({selector_type.downcase.to_sym => selector.downcase}).first.click
  when "label"
    @browser.labels({selector_type.downcase.to_sym => selector.downcase}).first.click
  when "link"
    @browser.links({selector_type.downcase.to_sym => selector.downcase}).first.click
  end
end
