module Types
  class MutationType < Types::BaseObject
    field :add_todo, mutation: Mutations::AddTodo
    field :del_todo, mutation: Mutations::DelTodo
  end
end
