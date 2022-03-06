class Student < ApplicationRecord
  validates_presence_of :first_name, :last_name, :grade, :school
  validates :grade, numericality: {in: 4..12} 
  belongs_to :school
end
