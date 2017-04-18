Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'
  description 'A product'

  field :id,   types.Int
  field :name, types.String
  field :price,   types.Int
  field :product_image, Types::ProductImageType

  field :vat, types.Float, 'value added tax' do
    argument :vat_rate, !types.Float, 'Vat percentage'
    resolve -> (obj, args, ctx) do
      obj.price * args[:vat_rate]
    end
  end 
end
