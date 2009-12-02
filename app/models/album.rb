class Album < ActiveRecord::Base
  
  belongs_to  :artist
  
  ALBUM_CONDITIONS = ["mint", "good", "average", "poor"]
  
  validates_presence_of :title, :year, :condition
  validates_inclusion_of :condition, :in => ALBUM_CONDITIONS, :message => "{{value}} is not valid", :allow_blank => true
  
  named_scope :earliest, :order => "year", :limit => 1
  named_scope :by_condition, lambda { |condition| { :conditions => ['condition = ?', condition] } }
  
end
