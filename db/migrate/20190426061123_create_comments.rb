class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :creation_date, foreign_key: true
      t.text :before_content
      t.text :after_content
      t.integer :before_point
      t.integer :after_point
      t.date :date

      t.timestamps
    end
  end
end
