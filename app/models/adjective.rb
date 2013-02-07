class Adjective < ActiveRecord::Base
  has_many :sensings
  has_many :things, :through => :sensings

  attr_accessible :name
end
