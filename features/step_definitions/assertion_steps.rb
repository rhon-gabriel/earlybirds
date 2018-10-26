# frozen_string_literal: true

Then('I should see {string}') do |content|
  expect(page).to have_content content
end

Then('I should not see {string}') do |content|
  expect(page).not_to have_content content
end

Then('I should be on the admin page') do
  expect(page).to have_current_path(admin_root_path)
end

Then("I should be on the landing page") do
  expect(current_path).to eq root_path
end

Then("I should be on the signup page") do
  expect(current_path).to eq new_user_registration_path
end

Then("I should be on the new subscription page") do
  expect(current_path).to eq new_subscription_path
end

Then("I should be on the signin page") do
  expect(current_path).to eq new_user_session_path 
end

And('I should see {string} element') do |element|
  expect(page).to have_css element
end
