json.extract! repository, :id, :owner, :name, :description, :language, :link, :created_at, :updated_at
json.url repository_url(repository, format: :json)
