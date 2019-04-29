class AddIndex2ToCreationDate < ActiveRecord::Migration[5.1]
  def change
    add_index :creation_dates, [:date, :user_id], :unique => true
  end
end
