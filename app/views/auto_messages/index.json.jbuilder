json.array!(@auto_messages) do |auto_message|
  json.extract! auto_message, :id, :message_type, :content, :keyword
  json.url auto_message_url(auto_message, format: :json)
end
