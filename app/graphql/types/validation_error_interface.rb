module Types
  module ValidationErrorInterface
    include Types::BaseInterface
    graphql_name 'ValidateError'

    field :errors, [Types::ValidationErrorType, null: true], null: true

    def errors
      object.errors.details.map do |field, errors|
        {
          field: field,
          error: errors.dig(0, :error)
        }
      end
    end
  end
end