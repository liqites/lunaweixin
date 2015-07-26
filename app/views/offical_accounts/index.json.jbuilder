json.array!(@offical_accounts) do |offical_account|
  json.extract! offical_account, :id, :name
  json.url offical_account_url(offical_account, format: :json)
end
