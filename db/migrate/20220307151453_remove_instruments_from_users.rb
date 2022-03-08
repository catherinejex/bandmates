class RemoveInstrumentsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :instruments
  end
end
