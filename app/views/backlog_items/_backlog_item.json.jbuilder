json.extract! backlog_item, :id, :ranking, :descripton, :created_at, :updated_at
json.url backlog_item_url(backlog_item, format: :json)