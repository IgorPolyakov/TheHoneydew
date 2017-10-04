# frozen_string_literal: true

class Report < ApplicationRecord
  def remove_quote(obj, str)
    obj.gsub!(/[\[\]\"]/, '') if attribute_present?(str)
  end
  before_save do
    remove_quote(reason, 'reason')
    remove_quote(result, 'result')
  end
  belongs_to :inspector # , dependent: :destroy
  belongs_to :organization # , dependent: :destroy иначе удаляет больше одной записи
end
