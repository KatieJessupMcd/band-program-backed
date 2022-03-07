class School < ApplicationRecord
  validates_presence_of :name
  has_many :students
  has_many :music_pieces
  has_many :instrument_inventory_items
end
