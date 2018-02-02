FactoryBot.define do
  factory :user_john do
    login 'john'
    is_admin false
  end
  factory :admin_jess do
    login 'jess'
    is_admin true
  end
  factory :random_guy do
    login FFaker::InternetSE.login_user_name
    password FFaker::InternetSE.password
    is_admin true
  end
end
