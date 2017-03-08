class Dinosaur < ApplicationRecord
  validates_presence_of :museum_number
  has_many :bones
end
