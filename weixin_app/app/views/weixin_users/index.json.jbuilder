json.array!(@weixin_users) do |weixin_user|
  json.extract! weixin_user, :id, :name, :openid
  json.url weixin_user_url(weixin_user, format: :json)
end
