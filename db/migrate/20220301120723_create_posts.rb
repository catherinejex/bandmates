class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.text :user_full_name

      t.timestamps
    end
  end
end
