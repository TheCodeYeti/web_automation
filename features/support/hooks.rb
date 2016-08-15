require 'watir-webdriver'



Before do
  @browser = Watir::Browser.new :chrome


end


After do
  @browser.close
end

# 
# site = 'https://www.loblaws.ca/'
# @browser.goto site
# @browser.div(:class => 'search-button active').click

#
# 'click on search button'
# 'wait'
# id: 'search-bar' fill in with 'apples'
# 'hit enter?'
#
#
# @browser.text_field(:id => 'entry_1000000').set 'your name'
# @browser.select_list(:id => 'entry_1000001').select 'ruby' #select this
# @browser.select_list(:id => 'entry_1000001').selected? 'ruby' #is it selected
# @browser.button(:name => 'submit').click #click submit
# @browser.text.include? 'Thank you'
