class District < ActiveRecord::Base

  validates :name, presence: true, numericality: true
  validates :valid_votes, presence: true, numericality: true
  validates :voivodship_id, presence: true, numericality: true
  validates :voters, presence: true, numericality: true

  belongs_to :voivodship
  has_one :user
  has_many :votes
end
