# frozen_string_literal: true
Then "stop" do
  binding.pry
end

When('I visit the site') do
  visit root_path
end

When('I click on {string}') do |element_text|
  click_on element_text
end

When("I visit the create page") do
  visit new_article_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end