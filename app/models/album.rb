class Album < ActiveRecord::Base
  attr_accessible :name

  has_many :photos
  belongs_to :user
end
