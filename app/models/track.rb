class Track < ActiveRecord::Base

  belongs_to :album
  has_attached_file :audio
end
