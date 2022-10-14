json.extract! todo, :id, :name, :description, :tag, :is_done, :created_at, :updated_at
json.url todo_url(todo, format: :json)
