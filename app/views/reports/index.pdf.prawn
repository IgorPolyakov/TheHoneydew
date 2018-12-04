prawn_document() do |pdf|
    @reports.each {|r| pdf.text r.number, r.create_report, r.deadline, r.inspector_id, r.executive, r.organization_id}
end