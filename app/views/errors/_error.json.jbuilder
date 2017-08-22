json.extract! error, :id, :min, :max, :time, :exps, :machine_id, :line, :created_at, :updated_at
json.url error_url(error, format: :json)
