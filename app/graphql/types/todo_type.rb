# frozen_string_literal: true

module Types
  class TodoType < Types::BaseObject
    implements GraphQL::Types::Relay::Node
    implements Types::ValidationErrorInterface

    global_id_field :id
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601Date, null: true
  end
end
