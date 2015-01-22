class Committee < ActiveRecord::Base
  has_and_belongs_to_many :voivodships
  has_many :votes
  validates_presence_of :name
end
