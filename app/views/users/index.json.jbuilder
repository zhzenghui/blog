json.array!(@users) do |user|
  json.extract! user, :name, :email, :content, :pwd, :role
  json.url user_url(user, format: :json)
end
