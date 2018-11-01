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
  visit new_admin_article_path
end

Then('I should be on the edit article page') do
  article = Article.last
  expect(page).to have_current_path(edit_admin_article_path(article))
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

Then('I select {string}') do |value|
  choose value
end

Then('stop') do
  binding.pry
end

Given("I select {string} for {string}") do |value, article_header|
  article = Article.find_by_header article_header
  within "#article_#{article.id}" do
    choose value
  end
end

Given("I click on {string} for {string}") do |value, article_header|
  article = Article.find_by_header article_header
  within "#article_#{article.id}" do
    click_on value
  end
end

Given("I fill in {string} for {string} with {string}") do |field, article_header, content|
  article = Article.find_by_header article_header
  within "#article_#{article.id}" do
    fill_in field, with: content
  end
end 

Given("I am logged in as {string}") do |user_email|
  user = User.find_by_email user_email 
  login_as user
end

And("I attach a file") do
  attach_file('article_image', "#{::Rails.root}/spec/fixtures/dummy_image.jpg")
end

Then('I wait {int} second(s)') do |seconds|
  sleep seconds
end