json.extract! user, :id, :loginname, :name, :role, :threLog, :resLog, :created_at, :updated_at
json.url user_url(user, format: :json)
