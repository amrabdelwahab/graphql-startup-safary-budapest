module Product
  Get = GraphQL::Field.define do
    description 'Find product by id'
    type types.String

    argument :string, !types.String, 'string to echo'
    resolve -> (_obj, args, ctx) do
      args[:string]
    end
  end
end
