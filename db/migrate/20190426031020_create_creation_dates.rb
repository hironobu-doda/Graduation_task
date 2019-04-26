class CreateCreationDates < ActiveRecord::Migration[5.1]
  def change
    create_table :creation_dates do |t|
      t.date :date

      t.timestamps
    end
  end
end
