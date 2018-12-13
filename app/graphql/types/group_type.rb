module Types
  GroupType = GraphQL::ObjectType.define do 
    name "Group"
    description "a group"

    field :id, !types.Int
    field :name, !types.String
    field :userId, !types.Int, property: :user_id
  end
end
