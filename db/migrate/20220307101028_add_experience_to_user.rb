class AddExperienceToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :experience, :string
  end
end
