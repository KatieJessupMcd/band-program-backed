# frozen_string_literal: true

module Types
  class SchoolType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :lowest_grade, Integer, null: true
    field :highest_grade, Integer, null: true
    field :grade_range, String, null: true
    field :students, [Types::StudentType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def grade_range
      [object.lowest_grade.to_s, object.highest_grade.to_s].compact.join("-")
    end
  end
end
