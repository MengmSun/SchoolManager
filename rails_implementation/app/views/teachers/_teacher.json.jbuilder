json.extract! teacher, :id, :work_id, :department_id, :title, :id_number, :id_type, :name, :gender, :birthday, :nationality, :home_address, :home_postcode, :phone_number, :email, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
