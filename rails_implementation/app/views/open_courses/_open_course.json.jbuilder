json.extract! open_course, :id, :course_id, :teacher_id, :term, :schedule, :created_at, :updated_at
json.url open_course_url(open_course, format: :json)
