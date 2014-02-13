class Blog < ActiveRecord::Base
  attr_accessible :description, :title, :photos_attributes, :ip_address, :ip_address_count, :fb_post_number
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :admin
  has_many :photos
  accepts_nested_attributes_for :photos
end
