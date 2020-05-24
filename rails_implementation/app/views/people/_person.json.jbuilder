json.extract! person, :id, :id_number, :id_type, :name, :gender, :birthday, :nationality, :home_address, :home_postcode, :phone_number, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
