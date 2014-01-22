class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    unless record.email == "jordan@rushingfitness.com"
      record.errors[:base] << "Cannot Create Admin"
    end
  end
end

class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  include ActiveModel::Validations
  validates_with GoodnessValidator, :on => :create

  has_many :blogs
end
