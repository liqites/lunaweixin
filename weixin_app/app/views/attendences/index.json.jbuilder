json.array!(@attendences) do |attendence|
  json.extract! attendence, :id, :weixin_user_id, :message
  json.url attendence_url(attendence, format: :json)
end
