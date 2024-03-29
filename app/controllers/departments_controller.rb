class DepartmentsController < ApplicationController
	# GET /departments
	# GET /departments.json
	def index
		@departments = Department.all
		@factory = Factory.find(params[:factory_id])

		respond_to do |format|
		format.html # index.html.erb
		format.json { render json: @departments }
		end
	end

	# GET /departments/1
	# GET /departments/1.json
	def show
		@department = Department.find(params[:id])
		@factory = Factory.find(params[:factory_id])

		respond_to do |format|
		format.html # show.html.erb
		format.json { render json: @department }
		end
	end

	# GET /departments/new
	# GET /departments/new.json
	def new
		@department = Department.new
		@factory = Factory.find(params[:factory_id])

		respond_to do |format|
		format.html # new.html.erb
		format.json { render json: @department }
		end
	end

	# GET /departments/1/edit
	def edit
		@department = Department.find(params[:id])
		@factory = Factory.find(params[:factory_id])
	end

	# POST /departments
	# POST /departments.json
	def create
		@department = Department.new(params[:department])
		@factory = Factory.find(params[:factory_id])

		respond_to do |format|
		if @department.save
			format.html { redirect_to @factory, notice: t('actions.department.notice.created') }
			format.json { render json: @department, status: :created, location: @department }
		else
			format.html { render action: "new" }
			format.json { render json: @department.errors, status: :unprocessable_entity }
		end
		end
	end

	# PUT /departments/1
	# PUT /departments/1.json
	def update
		@department = Department.find(params[:id])
		@factory = Factory.find(params[:factory_id])

		respond_to do |format|
		if @department.update_attributes(params[:department])
			format.html { redirect_to @factory, notice: t('actions.department.notice.updated') }
			format.json { head :no_content }
		else
			format.html { render action: "edit" }
			format.json { render json: @department.errors, status: :unprocessable_entity }
		end
		end
	end

	# DELETE /departments/1
	# DELETE /departments/1.json
	def destroy
		@factory = Factory.find(params[:factory_id])
		@department = Department.find(params[:id])
		@department.destroy

		respond_to do |format|
			format.html { redirect_to @factory }
		format.json { head :no_content }
		end
	end
end
