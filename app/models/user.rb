# frozen_string_literal: true

# Main devise class
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :timeoutable
  has_many :inspectors, dependent: :destroy and :edit
  has_many :checks, dependent: :destroy and :edit
  has_many :reports, dependent: :destroy and :edit
  has_many :people, dependent: :destroy and :edit
  has_many :organizations, dependent: :destroy and :edit
end
