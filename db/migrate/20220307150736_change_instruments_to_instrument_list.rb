class ChangeInstrumentsToInstrumentList < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :instruments, :instrument_list
  end
end
