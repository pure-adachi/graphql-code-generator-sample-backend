module Mutations
  class AddTodo < BaseMutation
    graphql_name 'AddTodo'

    field :todo, Types::TodoType, null: false
    field :result, Boolean, null: true

    argument :name, String, required: true

    def resolve(**args)
      todo = Todo.new(name: args[:name])
      todo.save

      {
        todo: todo,
        result: todo.errors.blank?
      }
    end
  end
end
