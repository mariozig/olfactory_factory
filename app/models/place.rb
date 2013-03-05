# This is taken mostly from Railscast: http://railscasts.com/episodes/273-geocoder?view=asciicast
class Place < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude

  geocoded_by :address
  after_validation :geocode
end
