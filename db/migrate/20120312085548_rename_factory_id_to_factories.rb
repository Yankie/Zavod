class RenameFactoryIdToFactories < ActiveRecord::Migration
  def up
	  rename_column(:factories, :factory_id, :factory_num)
  end

  def down
	  
	  rename_column(:factories, :factory_num, :factory_id)
  end
end
