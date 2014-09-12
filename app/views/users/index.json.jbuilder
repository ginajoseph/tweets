json.array!(@users) do |user|
  json.extract! user, :id, :type, :password, :first_name, :last_name, :email, :title
  json.url user_url(user, format: :json)
end
