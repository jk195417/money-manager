FactoryGirl.define do
  money_types = %w(Income Expense)
  r = Random.new
  factory :user do
    email Faker::Internet.free_email
    password Faker::Internet.password
  end
  factory :money_record do
    type money_types[r.rand(1..2)]
    money Faker::Number.decimal(r.rand(1..4), r.rand(1..4))
    label Faker::Lorem.word
    description Faker::Lorem.paragraph
  end
  factory :income do
    type 'Income'
    money Faker::Number.decimal(r.rand(1..4), r.rand(1..4))
    label Faker::Lorem.word
    description Faker::Lorem.paragraph
  end
  factory :expense do
    type 'Expense'
    money Faker::Number.decimal(r.rand(1..4), r.rand(1..4))
    label Faker::Lorem.word
    description Faker::Lorem.paragraph
  end
end
