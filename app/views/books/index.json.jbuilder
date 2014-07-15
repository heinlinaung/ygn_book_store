json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :image_url, :price
  json.url book_url(book, format: :json)
end
