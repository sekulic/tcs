json.array!(@articles) do |article|
  json.extract! article, :id, :title, :text1, :text2, :text3, :text4, :embed1, :embed2, :embed3, :embed4, :p1desescription, :p2description, :p3description, :p4description
  json.url article_url(article, format: :json)
end
