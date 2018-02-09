# frozen_string_literal: true

class Report < ApplicationRecord
  has_and_belongs_to_many :reasons
  belongs_to :inspector # , dependent: :destroy
  belongs_to :organization # , dependent: :destroy иначе удаляет больше одной записи
  delegate :name, to: :organization, prefix: true
  validates :title_report, :number, :executive, presence: true
  has_and_belongs_to_many :results
end
