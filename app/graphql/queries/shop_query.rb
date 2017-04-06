Queries::ShopQuery = GraphQL::Field.define do
  name 'Shop'
  description 'Find shop by id'
  type Types::ShopType

  argument :id, !types.Int, 'shop id'
  resolve -> (_obj, args, _) do
    Shop.find(args[:id])
  end
end
