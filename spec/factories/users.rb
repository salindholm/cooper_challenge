FactoryBot.define do
  factory :user do
    email { "password@password.com" }
    password { "eightcharacters" }
    password_confirmation { "eightcharacters" }
  end
end
