class GraphqlSchema < GraphQL::Schema
  use GraphQL::Batch
  enable_preloading

  mutation(Types::MutationType)
  query(Types::QueryType)
end
