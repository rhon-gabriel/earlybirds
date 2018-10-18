FactoryBot.define do
  factory :article do
    header { "MyString" }
    subheader { "MyText" }
    body { "MyText" }
    status { "MyString"}
    
    category
  end
end
