class AddUserReferencesToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :creator, null: false, foreign_key: { to_table: :users }
    add_reference :chatrooms, :invited, null: false, foreign_key: { to_table: :users }
  end
end
