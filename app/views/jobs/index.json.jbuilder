json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :description, :area
  json.url job_url(job, format: :json)
end
