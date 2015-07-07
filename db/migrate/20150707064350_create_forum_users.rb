class CreateForumUsers < ActiveRecord::Migration
  def change
    create_table :forum_users do |t|
      t.references :forum, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
