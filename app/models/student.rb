class Student < ApplicationRecord
  validates_presence_of :first_name, :last_name, :school
  belongs_to :school
end
