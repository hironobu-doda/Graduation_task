class CreateCopings < ActiveRecord::Migration[5.1]
  def change
    create_table :copings do |t|
      t.text :coping_repertory
      t.boolean :soon

      t.timestamps
    end
  end
end
