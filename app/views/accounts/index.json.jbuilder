json.array!(@accounts) do |account|
  json.extract! account, :id, :supplier_id, :acc_name, :acc_bal, :acc_type, :acc_number
  json.url account_url(account, format: :json)
end
