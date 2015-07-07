class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :forum
  belongs_to :post
  has_many :posts
end
