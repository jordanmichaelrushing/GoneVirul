class Photo < ActiveRecord::Base

  attr_accessible :blog_picture, :landing_picture
  has_attached_file :landing_picture, :styles => { :landing => "", :side_bar => ""},
    :convert_options => { 
        :landing => "-gravity north -thumbnail 590x200^ -extent 590x200" ,
        :side_bar => "-gravity north -thumbnail 300x157^ -extent 300x157"
    }, :default_url => "/images/:style/missing.png"
  has_attached_file :blog_picture, :styles => { :blog => "600x447#"}, :default_url => "/images/:style/missing.png"

  belongs_to :blogs

  def blog_picture_from_url(url)
    self.blog_picture = open(url)
  end
  def landing_picture_from_url(url)
    self.landing_picture = open(url)
  end
end