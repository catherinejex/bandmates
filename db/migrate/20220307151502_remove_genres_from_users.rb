class RemoveGenresFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :genres
  end
end
