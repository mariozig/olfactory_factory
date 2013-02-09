class Thing < ActiveRecord::Base
  has_many :sensings
  has_many :adjectives, :through => :sensings

  validates :name, :presence => true
  attr_accessible :name
end
