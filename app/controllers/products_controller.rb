class ProductsController < ApplicationController
	# GET /products
	# GET /products.json
	def index
		@products = Product.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @products }
		end
	end

	# GET /products/1
	# GET /products/1.json
	def show
		@product = Product.find(params[:id])
		@product_parts = @product.parts.paginate(:page => params[:page])
		@department = @product.department
		@factory = @department.factory

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @product }
		end
	end

	# GET /products/new
	# GET /products/new.json
	def new
		@product = Product.new
		@parts = Part.all

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @product }
		end
	end

	# GET /products/1/add_part
	def add_part
		@product = Product.find(params[:id])
		@parts = Part.all
	end

	# PUT /products/1
	# PUT /products/1.json
	def assign_part
		@product = Product.find(params[:id])
		@part = Part.find(params[:product][:parts])
		
		respond_to do |format|
			if @part.update_attributes({:product_id => @product.id})
				format.html { redirect_to @product, notice: t('actions.product.notice.created') }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end
	
	def free_part
		@part = Part.find(params[:part])
		@product = Product.find(params[:id])
		
		respond_to do |format|
			if @part.update_attributes({:product_id => nil})
				format.html { redirect_to @product, notice: t('actions.product.notice.updated') }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end
	# GET /products/1/edit
	def edit
		@product = Product.find(params[:id])
		@parts = Part.all
	end

	# POST /products
	# POST /products.json
	def create
		@product = Product.new(params[:product])

		respond_to do |format|
			if @product.save
				format.html { redirect_to @product, notice: t('actions.product.notice.created') }
				format.json { render json: @product, status: :created, location: @product }
			else
				format.html { render action: "new" }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end

	# PUT /products/1
	# PUT /products/1.json
	def update
		@product = Product.find(params[:id])

		respond_to do |format|
			if @product.update_attributes(params[:product])
				format.html { redirect_to @product, notice: t('actions.product.notice.updated') }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /products/1
	# DELETE /products/1.json
	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		respond_to do |format|
			format.html { redirect_to products_url }
			format.json { head :no_content }
		end
	end
end
