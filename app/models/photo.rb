class Photo < ActiveRecord::Base

  attr_accessible :blog_picture, :landing_picture
  has_attached_file :landing_picture, :styles => { :landing => "590x200>", :side_bar => "300x157>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :blog_picture, :styles => { :blog => "600x447>"}, :default_url => "/images/:style/missing.png"

  belongs_to :blogs
end