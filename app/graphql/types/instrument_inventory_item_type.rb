# frozen_string_literal: true

module Types
  class InstrumentInventoryItemType < Types::BaseObject
    field :id, ID, null: false
    field :condition, Integer
    field :date_bought, GraphQL::Types::ISO8601Date
    field :serial_number, Integer
    field :brand, String
    field :model, String
    field :estimated_value, Float
    field :school_id, Integer, null: false
    field :school, Types::SchoolType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
