class Forum < ActiveRecord::Base
  belongs_to :forum
  has_many :forums
  has_many :posts
end
