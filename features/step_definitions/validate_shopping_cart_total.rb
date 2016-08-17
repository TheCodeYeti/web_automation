Then(/^the shopping cart total should show the amount from the first "([^"]*)" with the "([^"]*)" "([^"]*)"$/) do |element_type, selector_type, selector|
  cart_total = @browser.span(class: "shopping-cart-total").text

  selector_type.gsub!(/-/, '_')
  # binding.pry
  price_to_verify = case element_type.downcase
  when "button"
    @browser.buttons({selector_type.downcase.to_sym => selector.downcase}).first.text
  when "div"
    @browser.divs({selector_type.downcase.to_sym => selector.downcase}).first.text
  when "h5"
    @browser.h5s({selector_type.downcase.to_sym => selector.downcase}).first.text
  when "label"
    @browser.labels({selector_type.downcase.to_sym => selector.downcase}).first.text
  when "link"
    @browser.links({selector_type.downcase.to_sym => selector.downcase}).first.text
  when "span"
    @browser.spans({selector_type.downcase.to_sym => selector.downcase}).first.text
  end

  unless cart_total.tr('$','').to_f == price_to_verify.tr('$','').to_f
    error_list ||= "Add to cart test failed for the following reasons:\n"
    error_list += "Cart should be showing a total of #{price_to_verify} but instead shows #{cart_total}\n"
  end

  raise StandardError.new(error_list) if error_list

end
