class AddGenresToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :genres, :string
  end
end
