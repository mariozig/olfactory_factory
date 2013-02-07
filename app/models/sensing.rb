class Sensing < ActiveRecord::Base
  belongs_to :thing
  belongs_to :adjective

  attr_accessible :adjective_id, :thing_id, :adjective, :thing
end
