# frozen_string_literal: true

json.extract! inspector, :id, :first_name, :last_name, :middle_name, :position, :created_at, :updated_at
json.url inspector_url(inspector, format: :json)
