class User < ActiveRecord::Base
  include Gravtastic
  gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :forum_users
  has_many :forums, through: :forum_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
