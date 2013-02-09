class Thing < ActiveRecord::Base
  has_many :sensings
  has_many :adjectives, :through => :sensings

  accepts_nested_attributes_for :adjectives, :reject_if => :all_blank

  validates :name, :presence => true
  attr_accessible :name, :adjectives_attributes
end
