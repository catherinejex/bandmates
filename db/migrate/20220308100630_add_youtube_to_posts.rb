class AddYoutubeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :youtube_link, :string
  end
end
