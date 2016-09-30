class CustomersController < ApplicationController
	def index
		@customers = Customer.page(params[:page]).per(10)
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def show
		@customer = Customer.find(params[:id])
		@contracts = @customer.contracts

	end

	def new
		@new_customer  = true
		@customer = Customer.new
	end

	def update
		@customer = Customer.find(params[:id])

		if @customer.update(customer_params)
			flash[:success] = "Customer successfully updated"
			redirect_to @customer
		else
			render 'edit'
		end
	end


	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			flash[:success] = "Customer successfully created"
			redirect_to '/'
		else
			flash[:error] = "Errors in form submission"
			redirect_to '/'
		end

	end
	private
	def customer_params
		params.require(:customer).permit(:name, :address)
	end
end
