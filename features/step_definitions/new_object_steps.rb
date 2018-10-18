Given("the following articles exist") do |table|
    table.hashes.each do |article|
      create(:article, article)
    end
end