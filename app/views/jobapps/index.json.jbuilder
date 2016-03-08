json.array!(@jobapps) do |jobapp|
  json.extract! jobapp, :id, :message
  json.url jobapp_url(jobapp, format: :json)
end
