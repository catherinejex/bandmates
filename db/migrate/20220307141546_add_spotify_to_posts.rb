class AddSpotifyToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :spotify_link, :string
  end
end
