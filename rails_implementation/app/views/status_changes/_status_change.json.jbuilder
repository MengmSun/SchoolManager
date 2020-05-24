json.extract! status_change, :id, :code, :type, :happened_at, :new_clazz_code, :original_clazz_code, :created_at, :updated_at
json.url status_change_url(status_change, format: :json)
