class ChangeGenresToGenreList < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :genres, :genre_list
  end
end
