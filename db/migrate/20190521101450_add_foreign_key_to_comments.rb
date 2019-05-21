class AddForeignKeyToComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :pin_Id
    # add_column :comments, :user_id, :integer
    # add_column :comments, :post_id, :integer
    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
  end
end
