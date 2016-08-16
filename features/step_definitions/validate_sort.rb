Then(/^I should see a list of "([^"]*)" sorted by "([^"]*)"$/) do |items, sort_criteria|
  error_list = nil
  prior_price = 0
  @browser.divs(class: "module-grocery-product").each do |item|
    name = item.a(class: "product-name").text
    price_string = item.span(class: "reg-price").text
    price = price_string.tr('$','').to_f
    if price < prior_price then
      # binding.pry
      error_list ||= "Sorting test failed for the following reasons:\n"
      error_list += "#{name} with a price of #{price} is out of place\n"
    end
    prior_price = price
  end
  raise StandardError.new(error_list) if error_list
  # module-grocery-product
end
