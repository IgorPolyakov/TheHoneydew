# frozen_string_literal: true

json.array! @reports, partial: 'reports/report', as: :report
