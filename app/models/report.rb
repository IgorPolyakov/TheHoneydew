# frozen_string_literal: true

class Report < ApplicationRecord
  
  has_and_belongs_to_many :reasons
  belongs_to :inspector # , dependent: :destroy
  belongs_to :organization # , dependent: :destroy иначе удаляет больше одной записи
  validates :title_report, :number, :executive, presence: true

  def self.result
    [
      I18n.t(:off_control),
      I18n.t(:move_to_inner_control)
    ]
  end
end
