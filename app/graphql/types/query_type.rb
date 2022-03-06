module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :students, 
    [Types::StudentType],
    null: false,
    description: "Return a list of students"

    def students
      Student.all
    end

    field :schools, [Types::SchoolType], null: false, description: "Return a list of schools"

    def schools
      School.all
    end
  end
end
