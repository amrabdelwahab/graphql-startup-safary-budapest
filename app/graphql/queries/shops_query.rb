Queries::ShopsQuery = GraphQL::Field.define do
  name 'Shops'
  description 'Return all available shops'
  type types[Types::ShopType]

  resolve -> (_obj, _args, _) do
    Shop.all
  end
end
