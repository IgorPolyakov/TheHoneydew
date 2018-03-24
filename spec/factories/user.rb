# frozen_string_literal: true

FactoryBot.define do
  factory :user_john, class: User do
    login 'john'
    is_admin false
  end
  factory :admin_jess, class: User do
    login 'jess'
    is_admin true
    password '123456'
  end
  factory :random_guy, class: User do
    login FFaker::InternetSE.login_user_name
    password FFaker::InternetSE.password
    is_admin true
  end
end
