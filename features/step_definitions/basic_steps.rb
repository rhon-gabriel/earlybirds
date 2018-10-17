Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
  end

When("I visit the site") do
    visit root_path
  end

Then("I should see a header {string}") do |string|
      pending # Write code here that turns the phrase above into concrete actions
end
    
Then("I should see subheader {string}") do |string|
      pending # Write code here that turns the phrase above into concrete actions
end
    
Then("I should see body {string}") do |string|
      pending # Write code here that turns the phrase above into concrete actions
end