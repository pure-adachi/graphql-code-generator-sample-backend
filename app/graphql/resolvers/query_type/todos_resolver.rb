# frozen_string_literal: true

module Resolvers
  module QueryType
    class TodosResolver < GraphQL::Schema::Resolver
      type [Types::TodoType], null: false

      def resolve(**_args)
        Todo.all
      end
    end
  end
end
