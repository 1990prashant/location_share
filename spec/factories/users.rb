FactoryBot.define do
  factory :user do

    factory :user1 do
      email { 'user1@example.com' }
      username { 'user1' }
      name { 'User 1' }
      password { '123456' }
    end

    factory :user2 do
      email { 'user2@example.com' }
      username { 'user2' }
      password { '123456' }
    end
  
  end
end
