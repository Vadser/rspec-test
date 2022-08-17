json.extract! transaction, :id, :name, :to, :amount, :currency, :converted_amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
