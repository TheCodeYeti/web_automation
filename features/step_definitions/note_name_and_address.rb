When(/^I note the name and address for store "([^"]*)"$/) do |store_number|

  binding.pry
  store_info = @browser.li(data_store_id: store_number).h4(class: "store-name").text.split("\n")

  @store_name = store_info[0]
  @store_address = store_info[1]
end
