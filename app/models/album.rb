class Album < ActiveRecord::Base
  
  belongs_to  :artist
  has_many :tracks
  has_attached_file :image, :default_url => "/images/music_clipart/1.jpg"  #, :styles => {:medium => "300x300>", :thumb => "100x100>"}
  
  ALBUM_CONDITIONS = ["mint", "good", "average", "poor"]

  
  validates_presence_of :title, :year, :condition
  validates_inclusion_of :condition, :in => ALBUM_CONDITIONS, :message => "{{value}} is not valid", :allow_blank => true
  
  named_scope :earliest, :order => "year", :limit => 1
  named_scope :by_condition, lambda { |condition| { :conditions => ['condition = ?', condition] } }
  
end
