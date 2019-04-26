class AddUserRefToCopings < ActiveRecord::Migration[5.1]
  def change
    add_reference :copings, :user, foreign_key: true
  end
end
