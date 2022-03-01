class AddInstrumentsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :instruments, :string
  end
end
