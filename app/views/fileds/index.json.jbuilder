json.array!(@fileds) do |filed|
  json.extract! filed, :id, :Service, :Company, :address, :phone, :website
  json.url filed_url(filed, format: :json)
end
