# frozen_string_literal: true

module Types
  class TodoType < Types::BaseObject
    implements GraphQL::Relay::Node.interface

    global_id_field :id
    field :name, String, null: true
  end
end
