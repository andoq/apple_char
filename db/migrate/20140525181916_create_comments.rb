class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.string :user_name
      t.text :content
      t.string :email

      t.timestamps
    end
  end
end
