class AddUserRefToCreationDates < ActiveRecord::Migration[5.1]
  def change
    add_reference :creation_dates, :user, foreign_key: true
  end
end
