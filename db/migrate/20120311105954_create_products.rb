class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :department_id
      t.string :name
      t.decimal :weight

      t.timestamps
    end
  end
end
