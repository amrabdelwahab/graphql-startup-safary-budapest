Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'
  description 'A product'

  field :id,   types.Int
  field :name, types.String
  field :price,   types.Int
  field :product_image, Types::ProductImageType
end
