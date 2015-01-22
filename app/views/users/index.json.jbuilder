json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :role, :district_id
  json.url user_url(user, format: :json)
end
