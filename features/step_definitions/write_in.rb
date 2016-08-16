When(/^I write "([^"]*)" in the "([^"]*)" "([^"]*)"$/) do |input_text, selector, element|
  case element.downcase
  when "text field"
    @browser.text_field(id: selector.downcase).set input_text
  end
end
