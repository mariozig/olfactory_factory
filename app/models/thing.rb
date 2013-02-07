class Thing < ActiveRecord::Base
  has_many :sensings
  has_many :adjectives, :through => :sensings

  attr_accessible :name
end
