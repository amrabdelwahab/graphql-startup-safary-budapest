Queries::ProductQuery = GraphQL::Field.define do
  name 'Product'
  description 'Find product by id'
  type Types::ProductType

  argument :id, !types.Int, 'product id'
  resolve -> (_obj, args, _) do
    Product.find(args[:id])
  end
end
