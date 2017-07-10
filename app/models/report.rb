class Report < ApplicationRecord
  before_save do
    result.gsub!(/[\[\]\"]/, '') if attribute_present?('result')
    reason.gsub!(/[\[\]\"]/, '') if attribute_present?('reason')
  end
  belongs_to :inspector # , dependent: :destroy
  belongs_to :organization # , dependent: :destroy иначе удаляет больше одной записи
end
