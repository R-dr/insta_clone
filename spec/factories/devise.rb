FactoryBot.define do
    factory :user do
      id {1}
      email {"user@test.com"}
      password {"password1"}
      # Add additional fields as required via your User model
    end
end 