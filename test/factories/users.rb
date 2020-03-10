FactoryBot.define do
  factory :user do
    transient do
      new_password { Faker::Alphanumeric.alphanumeric(number: 10) }
    end

    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { new_password }
    password_confirmation { new_password }
    account
  end
end
