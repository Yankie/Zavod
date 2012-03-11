class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.integer :factory_id
      t.string :name
      t.string :address
      t.string :ceo_name

      t.timestamps
    end
  end
end
