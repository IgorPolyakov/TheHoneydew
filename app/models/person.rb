class Person < ApplicationRecord
    has_and_belongs_to_many :checks
end
