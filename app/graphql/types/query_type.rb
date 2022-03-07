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
  end
end
