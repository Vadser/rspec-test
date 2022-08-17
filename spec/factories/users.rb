FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'Password123!' }

    # trait :admin do
    #   role { 'admin' }
    # end

    # trait :not_admin do
    #   plan { 'not_admin' }
    # end
    # create(:user, :admin)
  end
end
