Types::ProductImageType = GraphQL::ObjectType.define do
  name 'ProductImage'
  description 'A product image'

  field :id, types.Int
  field :url, types.String
end
