Given /^I am on the homepage$/ do
	visit "/"
end

When /^I follow "([^"]*)"$/ do |link|
	click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
	fill_in field, :with => value
end

And /^I press "([^"]*)"$/ do |button|
	click_button(button)
end

Then /^I should see "([^"]*)"$/ do |content|
	page.should have_content(content)
end
