class Blog < ActiveRecord::Base
  attr_accessible :description, :title
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :admin
  has_many :photos
end
