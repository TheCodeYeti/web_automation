Then(/^I should see a list of "([^"]*)" sorted by "([^"]*)"$/) do |items, sort_criteria|
  prior_price = 0
  @browser.divs(class: "module-grocery-product").each do |item|
    name = item.a(class: "product-name").text
    price_string = item.span(class: "reg-price").text
    price = price_string.tr('$','').to_f
    if price < prior_price then
      # binding.pry
      fail(StandardError.new("sorting test failed on #{name} with a price of #{price}"))
    end
    prior_price = price

  end
  # module-grocery-product
end
