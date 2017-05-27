json.extract! report, :id, :number, :deadline, :executive, :reason, :result, :inspector_id, :organization_id, :created_at, :updated_at
json.url report_url(report, format: :json)
