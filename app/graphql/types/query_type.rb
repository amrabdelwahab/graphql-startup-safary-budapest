require 'queries/shop_query'
Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  field :shops, Queries::ShopsQuery
  field :shop, Queries::ShopQuery
  field :product, Queries::ProductQuery
end
