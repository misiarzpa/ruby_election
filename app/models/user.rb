class User < ActiveRecord::Base
  belongs_to :district
  validates_presence_of :name, :surname, :role, :district_id
end
