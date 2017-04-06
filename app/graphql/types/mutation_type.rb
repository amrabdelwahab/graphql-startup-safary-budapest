Types::MutationType = GraphQL::ObjectType.define do
name 'Mutation'
description 'The mutation root for this schema'

field :create_shop, field: Mutations::CreateShop.field

end
