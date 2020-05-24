json.extract! course, :id, :code, :name, :department_id, :assessment_type, :created_at, :updated_at
json.url course_url(course, format: :json)
