# frozen_string_literal: true

json.array! @inspectors, partial: 'inspectors/inspector', as: :inspector
