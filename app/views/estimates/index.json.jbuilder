json.array!(@estimates) do |estimate|
  json.extract! estimate, :id, :estimate_date, :expiration_date, :total, :quantity, :amount
  json.url estimate_url(estimate, format: :json)
end
