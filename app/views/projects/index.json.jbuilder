json.array!(@projects) do |project|
  json.extract! project, :id, :title, :deadline, :client, :general_type, :specific_type, :contact_name, :contact_email, :description
  json.url project_url(project, format: :json)
end
