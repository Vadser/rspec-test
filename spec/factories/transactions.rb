FactoryBot.define do
  factory :transaction do
    name { Faker::String.random }
    to { Faker::Internet.email }
    amount { Faker::Number.decimal_part(digits: 2) }

    trait :eur do
      currency { 'EUR' }
    end

    trait :byn do
      currency { 'BYN' }
    end
  end
end
