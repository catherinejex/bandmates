class RemoveFullNameFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :user_full_name, :text
  end
end
