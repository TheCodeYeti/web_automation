Then(/^the amount on the badge and the price reduction match$/) do
  error_list = nil
  @browser.divs(class: "module-grocery-product").each do |item|

    badge_savings_string = item.span(class: "deal-type").text
    badge_savings = badge_savings_string.tr('SAVE $', '').to_f

    current_price_string = item.span(class: "reg-price").text
    current_price = current_price_string.tr('$', '').to_f

    old_price_string = item.span(class: "old-price").text
    old_price = old_price_string.tr('$', '').to_f

    name = item.a(class: "product-name").text

    unless (old_price - current_price).round(2) == badge_savings
      error_list ||= "Badge test failed for the following reasons:\n"
      error_list += "#{name} badge savings of #{badge_savings_string} does not match given sale price of #{current_price_string} and an original price of #{old_price_string}\n"
    end

  end
  raise error_list if error_list

end
