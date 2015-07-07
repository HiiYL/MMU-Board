class ForumUser < ActiveRecord::Base
	belongs_to :forum, inverse_of: :forum_users
	belongs_to :user, inverse_of: :forum_users
end