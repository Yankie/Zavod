class ReportsController < ApplicationController
	def index
	end

	def parts
		@parts = Part.where("product_id IS NOT NULL")
		@parts_free = Part.where("product_id IS NULL")
		
	end

	def deliveries
		
	end
end
