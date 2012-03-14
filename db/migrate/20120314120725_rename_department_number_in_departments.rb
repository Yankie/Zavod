class RenameDepartmentNumberInDepartments < ActiveRecord::Migration
  def up
	remove_column :departments, :department_number
	add_column :departments, :name, :string
  end

  def down
	  remove_column :departments, :name
	  add_column :departments, :department_number, :integer
  end
end
