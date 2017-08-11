json.extract! book, :id, :title, :url, :rating, :ratings_num, :image_url, :created_at, :updated_at
json.url book_url(book, format: :json)
