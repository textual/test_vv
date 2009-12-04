class Album < ActiveRecord::Base
  
  belongs_to  :artist
  has_many :tracks
  has_attached_file :image, :default_url => "/images/music_clipart/1.jpg"  #, :styles => {:medium => "300x300>", :thumb => "100x100>"}
  accepts_nested_attributes_for :tracks
  
  ALBUM_CONDITIONS = ["mint", "good", "average", "poor"]
  DEFAULT_IMAGE_URL = "music_clipart/1.jpg"
  
  validates_presence_of :title, :year, :condition
  validates_inclusion_of :condition, :in => ALBUM_CONDITIONS, :message => "{{value}} is not valid", :allow_blank => true
  
  named_scope :earliest, :order => "year", :limit => 1
  named_scope :by_condition, lambda { |condition| { :conditions => ['condition = ?', condition] } }
  
  def display_image_url
    image_file_name.present? ? image.url : DEFAULT_IMAGE_URL
  end
  
  def before_save
    self.price = Pricing.request(self.title, self.artist.name).first['price']
  end
  
end
