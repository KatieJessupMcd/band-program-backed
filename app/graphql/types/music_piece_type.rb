# frozen_string_literal: true

module Types
  class MusicPieceType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :category, String
    field :difficulty, Integer
    field :composer, String
    field :arranger, String
    field :publisher, String
    field :genre, String
    field :is_hard_copy, Boolean
    field :is_digital, Boolean
    field :is_out_of_print, Boolean
    field :purchase_price, Float
    field :acquisition_date, GraphQL::Types::ISO8601Date
    field :serial_number, Integer
    field :school_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
