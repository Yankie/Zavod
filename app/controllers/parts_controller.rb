class PartsController < ApplicationController
	# GET /parts
	# GET /parts.json
	def index
# 		@product = Product.find(params[:product_id])
 		@supplier = Supplier.find(params[:supplier_id])
		@parts = @supplier.parts
		
		respond_to do |format|
		format.html # index.html.erb
		format.json { render json: @parts }
		end
	end

	# GET /parts/1
	# GET /parts/1.json
	def show
		@part = Part.find(params[:id])
# 		@product = Product.find(@part.product_id)
		@supplier = Supplier.find(@part.supplier_id)
		
		respond_to do |format|
		format.html # show.html.erb
		format.json { render json: @part }
		end
	end

	# GET /parts/new
	# GET /parts/new.json
	def new
		@part = Part.new
# 		@product = Product.find(@part.product_id)
		@supplier = Supplier.find(params[:supplier_id])
		
		respond_to do |format|
		format.html # new.html.erb
		format.json { render json: @part }
		end
	end

	# GET /parts/1/edit
	def edit
		@part = Part.find(params[:id])
		@product = Product.find(@part.product_id)
		@supplier = Supplier.find(@part.supplier_id)
	end

	# POST /parts
	# POST /parts.json
	def create
		@part = Part.new(params[:part])
# 		@product = Product.find(@part.product_id)
		@supplier = Supplier.find(params[:supplier_id])
		
		respond_to do |format|
		if @part.save
			format.html { redirect_to @supplier, notice: t('actions.part.notice.created') }
			format.json { render json: @part, status: :created, location: @supplier }
		else
			format.html { render action: "new" }
			format.json { render json: @part.errors, status: :unprocessable_entity }
		end
		end
	end

	# PUT /parts/1
	# PUT /parts/1.json
	def update
		@part = Part.find(params[:id])
# 		@product = Product.find(@part.product_id)
		@supplier = Supplier.find(@part.supplier_id)
		
		respond_to do |format|
		if @part.update_attributes(params[:part])
			format.html { redirect_to @supplier, notice: t('actions.part.notice.updated') }
			format.json { head :no_content }
		else
			format.html { render action: "edit" }
			format.json { render json: @part.errors, status: :unprocessable_entity }
		end
		end
	end

	# DELETE /parts/1
	# DELETE /parts/1.json
	def destroy
		@part = Part.find(params[:id])
# 		@product = Product.find(@part.product_id)
		@supplier = Supplier.find(@part.supplier_id)
		@part.destroy

		respond_to do |format|
			format.html { redirect_to @supplier }
			format.json { head :no_content }
		end
	end
end
