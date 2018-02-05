# frozen_string_literal: true

# Main ORM class
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :sorted, -> { order(updated_at: :desc) }
end
