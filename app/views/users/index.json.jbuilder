json.array!(@users) do |user|
  json.extract! user, :username, :mobile, :email
  json.url user_url(user, format: :json)
end