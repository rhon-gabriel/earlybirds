FactoryBot.define do
  factory :article do
    header { "MyString" }
    subheader { "MyText" }
    body { "MyText" }
    status { :pending }
    
    category
  end
end
