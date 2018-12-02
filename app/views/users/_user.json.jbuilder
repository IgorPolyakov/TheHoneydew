# frozen_string_literal: true

json.extract! user, :id, :login, :is_admin, :current_sign_in_at, :last_sign_in_at, :created_at, :updated_at
json.url user_url(user, format: :json)
