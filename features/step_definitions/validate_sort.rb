Then(/^I should see a list of "([^"]*)" sorted by "([^"]*)"$/) do |items, sort_criteria|
  @browser.divs(class: "module-grocery-product").each do |item|
    name = item.a(class: "product-name").text
    price = item.span(class: "reg-price").text
    binding.pry
  end
  # module-grocery-product
end
