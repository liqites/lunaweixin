json.array!(@custom_menus) do |custom_menu|
  json.extract! custom_menu, :id, :name, :func
  json.url custom_menu_url(custom_menu, format: :json)
end
