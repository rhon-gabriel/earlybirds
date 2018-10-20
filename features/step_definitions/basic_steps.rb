When('I visit the site') do
  visit root_path
end

Given('I visit the admin section/page') do
  visit admin_root_path
end

When('I click on {string}') do |element_text|
  click_on element_text
end

When('I visit the create page') do
  visit new_article_path
end

When('I fill in {string} with {string}') do |field, content|
  fill_in field, with: content
end

When('I select {string} from/as {string}') do |option, element|
  select option, from: element
end

Then('I click {string}') do |button|
  click_on button
end

Then("stop") do
  binding.pry
end
