class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :part_number
      t.string :name
      t.integer :prodict_id
      t.decimal :weight
      t.string :dimensions
      t.integer :supplier_id
      t.date :delivery_date

      t.timestamps
    end
  end
end
