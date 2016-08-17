Then(/^the name and address should match the previous page$/) do
  store_name = @browser.h4s.first.text
  store_address = @browser.p(class: "store-address").text

  unless normalize_store_info(store_name) == normalize_store_info(@store_name)
    error_list ||= "Store info test failed for the following reassons:\n"
    error_list += "Store name on search page of #{@store_name} does not match store name on store page of #{store_name}\n"
  end

  unless normalize_store_info(store_address) == normalize_store_info(@store_address)
    error_list ||= "Store info test failed for the following reassons:\n"
    error_list += "Store address on search page of #{@store_address} does not match store address on store page of #{store_address}\n"
  end

end

def normalize_store_info(store_info)
  store_info.tr(' ','').sub('Canada','').upcase
end
