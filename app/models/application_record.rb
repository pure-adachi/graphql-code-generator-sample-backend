class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def guid
    GraphQL::Schema::UniqueWithinType.encode(self.class.name, id)
  end

  def self.locate(uid)
    type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(uid)
    type_name.constantize.find(item_id) if name == type_name
  rescue StandardError
    nil
  end
end
