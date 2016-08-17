When(/^the price in kg is equivalent to the price in lbs$/) do
  error_list = nil
  @browser.divs(class: "module-grocery-product").each do |item|

    name = item.a(class: "product-name").text
    per_unit_text = item.span(class: "reg-qty").text.split("\n")[1]

    if per_unit_text
      if (per_unit_text.include? "kg") && (per_unit_text.include? "lb")
        per_kg = per_unit_text.split(" / kg")[0].tr('$','').to_f
        per_lb = per_unit_text.split(" / kg")[1].tr('$/ lb','').to_f

        unless (per_kg / 2.20462262185).round(2) == per_lb
          error_list ||= "kg vs lbs test failed for the following reasons:\n"
          error_list += "#{name} cost per kg of $#{per_kg} does not match with cost per lb of $#{per_lb} cost per lb should be $#{per_kg / 2.20462262185}\n"
        end

      end
    end
  end
  raise error_list if error_list

end
