class Person < ApplicationRecord
    # has_and_belongs_to_many :checks
    validates :first_name, :last_name, presence: true
end
