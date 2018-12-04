# frozen_string_literal: true
require 'prawn'

class Report < ApplicationRecord
  has_and_belongs_to_many :reasons
  belongs_to :inspector # , dependent: :destroy
  #belongs_to :user
  belongs_to :organization # , dependent: :destroy иначе удаляет больше одной записи
  delegate :name, to: :organization, prefix: true
  validates :title_report, :number, :executive, presence: true
  has_and_belongs_to_many :results

def download_pdf
  output = Reports.new.to_pdf
  send_data output, :type => 'application/pdf', :filename => "report.pdf"
end

end
