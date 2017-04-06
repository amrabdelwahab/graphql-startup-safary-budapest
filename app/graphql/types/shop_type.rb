require 'types/product_type'
Types::ShopType = GraphQL::ObjectType.define do
  name 'Shop'
  description 'A shop that has products'

  field :id,   types.Int
  field :name, types.String
  field :products, types[Types::ProductType]
end
