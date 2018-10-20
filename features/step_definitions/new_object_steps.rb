Given("the following articles exist") do |table|
  table.hashes.each do |article|
    category = Category.find_by(name: article[:category])
    create(:article, article.except!('category').merge(category: category))
  end
end

Given("the following categories exist") do |table|
  table.hashes.each do |category|
    create(:category, category)
  end
end