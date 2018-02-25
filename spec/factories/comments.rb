FactoryBot.define do
  factory :comment do
    email "Holger@test.com"
    body "MyText"
    article
  end
end
