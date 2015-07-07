class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.text :description
      t.boolean :is_private, default: false
      t.references :forum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
