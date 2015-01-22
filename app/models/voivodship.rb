class Voivodship < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :councilman, presence: true, numericality: true

  has_and_belongs_to_many :committees
  has_many :districts
end
