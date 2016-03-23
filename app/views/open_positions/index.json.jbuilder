json.array!(@open_positions) do |open_position|
  json.extract! open_position, :id, :number, :summary, :description, :option, :component, :category, :prio, :responsible, :state, :costmodel, :affects_version, :issue_ticket, :ticket_text, :notes, :in_sprint
  json.url open_position_url(open_position, format: :json)
end
