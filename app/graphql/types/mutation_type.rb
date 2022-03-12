module Types
  class MutationType < Types::BaseObject
    field :create_student, mutation: Mutations::CreateStudent
  end
end
