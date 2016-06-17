#this file will be used by factorygirl gem to generate campaign records
#you should always make sure that factories generate valid records.
FactoryGirl.define do
  factory :campaign do
    #we use sequence when we want to have one of our record be unique so we have ana ccess to a counter variable 'n' which we can use to generate the unique field.
    sequence(:title) {|n| "#{Faker::Company.bs}-#{n}"}
    body              { Faker::Lorem.paragraph}
    goal              { 10 + rand(10000)}
    end_date          60.days.from_now
  end
end
