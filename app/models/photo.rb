class Photo < ActiveRecord::Base
  attr_accessible :album_id, :url

  belongs_to :album

  mount_uploader :url, ImageUploader
end
