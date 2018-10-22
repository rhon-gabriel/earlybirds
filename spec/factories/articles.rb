FactoryBot.define do
  factory :article do
    header { "MyString" }
    subheader { "MyText" }
    body { "MyText" }
    status { :pending }
    comment { "MyText" }
    premium_status { :free }
    
    category
  end
end
