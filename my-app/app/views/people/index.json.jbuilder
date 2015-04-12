json.array!(@people) do |person|
  json.extract! person, :id, :name, :surname, :email, :phone, :address
  json.url person_url(person, format: :json)
end
