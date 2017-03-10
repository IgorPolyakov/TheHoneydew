json.extract! report, :id, :number, :dead_line, :inspector_id, :created_at, :updated_at
json.url report_url(report, format: :json)
