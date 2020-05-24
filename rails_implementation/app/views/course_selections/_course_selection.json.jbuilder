json.extract! course_selection, :id, :open_course_id, :score, :term, :created_at, :updated_at
json.url course_selection_url(course_selection, format: :json)
