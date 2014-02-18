json.array!(@idols) do |idol|
  json.extract! idol, :id, :name, :contact, :about, :motto
  json.url idol_url(idol, format: :json)
end
