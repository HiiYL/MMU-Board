class Forum < ActiveRecord::Base
  belongs_to :forum
  has_many :forums
  has_many :forum_users
  has_many :users, through: :forum_users
  has_many :posts

  def has_access(user)

  	if self.is_private
  		return self.users.find_by_id(user.id)
  	else
  		return false
  	end
  end
end
