class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :department_number
      t.integer :factory_id
      t.string :chief_name

      t.timestamps
    end
  end
end
