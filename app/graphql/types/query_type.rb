module Types
  class QueryType < Types::BaseObject
    field :todos, resolver: Resolvers::QueryType::TodosResolver
  end
end
