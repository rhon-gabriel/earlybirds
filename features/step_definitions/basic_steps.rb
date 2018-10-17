Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
  end

When("I visit the site") do
    visit root_path
  end