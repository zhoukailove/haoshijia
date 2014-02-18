json.array!(@users) do |user|
  json.extract! user, :username, :truename, :email, :mobile, :role, :state, :password_reset_token, :password_reset_sent_at, :avatar, :descript, :qq, :auth_token, :stores_count, :points
  json.url user_url(user, format: :json)
end