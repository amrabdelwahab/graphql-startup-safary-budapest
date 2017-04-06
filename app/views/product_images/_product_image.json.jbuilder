json.extract! product_image, :id, :name, :url, :product_id, :created_at, :updated_at
json.url product_image_url(product_image, format: :json)
