FactoryGirl.define do
  factory :product do
    sequence(:title) {|n| "#{Faker::Company.bs}-#{n}"}
    description            { Faker::Lorem.paragraph}
    price              { 100 + rand(100)}
    sales_price        { rand(100)}
  end
end
