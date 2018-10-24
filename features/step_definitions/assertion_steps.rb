# frozen_string_literal: true

Then('I should see {string}') do |content|
  expect(page).to have_content content
end

Then('I should not see {string}') do |content|
  expect(page).not_to have_content content
end

Then("I should be on the signup page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the signin page") do
  pending # Write code here that turns the phrase above into concrete actions
end
