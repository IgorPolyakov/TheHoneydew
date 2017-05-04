json.extract! report, :id, :number, :deadline, :inspector_id, :created_at, :updated_at
json.url report_url(report, format: :json)
