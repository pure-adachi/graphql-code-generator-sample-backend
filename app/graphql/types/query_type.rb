module Types
  class QueryType < Types::BaseObject
    add_field GraphQL::Types::Relay::NodeField
    add_field GraphQL::Types::Relay::NodesField

    field :todos, resolver: Resolvers::QueryType::TodosResolver
  end
end
