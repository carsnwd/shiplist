class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable
  #Users have many listings
  has_many :listings

  validate :email_domain

  def email_domain
  	domain = email.split('@').last
  	if domain != "ship.edu"
  		errors.add(:email, "Must Use Your School Email (@ship.edu)")
  	end
  end
end
