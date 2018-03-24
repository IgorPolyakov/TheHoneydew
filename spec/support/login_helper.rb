# frozen_string_literal: true

def login(login, password)
  visit root_path
  fill_in :user_login, with: login
  fill_in :user_password, with: password
  click_button 'Вход в систему'
end
