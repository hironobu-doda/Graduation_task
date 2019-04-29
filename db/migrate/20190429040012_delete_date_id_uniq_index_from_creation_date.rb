class DeleteDateIdUniqIndexFromCreationDate < ActiveRecord::Migration[5.1]
  def change
    remove_index :creation_dates, :date
  end
end
