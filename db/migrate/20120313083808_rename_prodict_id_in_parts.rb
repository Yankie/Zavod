class RenameProdictIdInParts < ActiveRecord::Migration
	def up
		rename_column(:parts, :prodict_id, :product_id)
	end
	def down
		rename_column(:parts, :product_id, :prodict_id)
	end
end
