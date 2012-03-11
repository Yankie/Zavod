class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :supplier_number
      t.string :name
      t.string :region
      t.string :address
      t.string :ceo_name

      t.timestamps
    end
  end
end
