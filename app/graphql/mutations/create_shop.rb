Mutations::CreateShop = GraphQL::Relay::Mutation.define do
  name 'CreateShop'
  input_field :name, !types.String, 'Shop name'
  return_field :shop, Types::ShopType

  resolve -> (_obj, args, _) do
    shop = Shop.create!(args.to_h)
    { shop: shop }
  end
end
