class Blog < ActiveRecord::Base
  attr_accessible :description, :title
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
end
