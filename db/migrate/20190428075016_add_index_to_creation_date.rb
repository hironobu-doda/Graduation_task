class AddIndexToCreationDate < ActiveRecord::Migration[5.1]
  def change
    add_index :creation_dates, :date, unique: true
  end
end
