module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField

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

    field :school, Types::SchoolType, null: true do
      description "Find a school by ID"
      argument :id, ID, required: true
    end

    def school(id:)
      School.find(id)
    end

    field :ensembles, [Types::EnsembleType], null: false, description: "Return a list of ensembles"

    def ensembles
      Ensemble.all
    end

    field :music_pieces, [Types::MusicPieceType], null: false, description: "Return a list of music pieces"

    def music_pieces
      MusicPiece.all
    end

    field :instrument_inventory_items, [Types::InstrumentInventoryItemType], null: false, description: "Return a list of instrument inventory item"

    def instrument_inventory_items
      InstrumentInventoryItem.all
    end

    field :instrument_types, [Types::InstrumentTypeType], null: false, description: "Return a list of instrument types"

    def instrument_types
      InstrumentType.all
    end

    field :instrument_families, [Types::InstrumentFamilyType], null: false, description: "Return a list of instrument families"

    def instrument_families
      InstrumentFamily.all
    end

  end
end
