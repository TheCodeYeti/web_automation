Then(/^I wait for "([^"]*)" seconds$/) do |wait_seconds|
  sleep(wait_seconds.to_f)  
end
