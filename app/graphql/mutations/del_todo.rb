module Mutations
  class DelTodo < BaseMutation
    graphql_name 'DelTodo'

    field :todo, Types::TodoType, null: false

    argument :id, ID, required: true

    def resolve(**args)
      todo = Todo.locate(args[:id])
      todo.destroy

      {
        todo: todo
      }
    end
  end
end
