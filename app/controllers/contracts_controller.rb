class ContractsController < ApplicationController

	def index
		#@customer = Customer.find(params[:customer_id])
		#@contracts = @customer.contracts.page(params[:page]).per(10)
		@contracts = Contract.page(params[:page]).per(10)
	end

	def new
		#@customer = Customer.find(params[:customer_id])
		@contract = Contract.new
	end

	def show
		@contract = Contract.find(params[:id])
		@customer = Customer.find(@contract.customer_id)
	end

	def edit
		#@customer = Customer.find(params[:customer_id])

		#@contract = @customer.contracts.find(params[:id])
		@contract = Contract.find(params[:id])
		@customer = Customer.find(@contract.customer_id)
	end

	def update
		@contract = Contract.find(params[:id])
		@customer = Customer.find(@contract.customer_id)
		#@customer = Customer.find(params[:customer_id])


		if @contract.update(contract_params)
			flash[:success] = "Contract successfully updated"
			redirect_to @contract
		else
			render 'edit'
		end
	end

	def create
		@customer = Customer.find(contract_params[:customer_id])
		@contract = @customer.contracts.create(contract_params)

		if @contract.save
			flash[:success] = "Contract successfully created"
			redirect_to '/'
		else
			flash[:error] = "Errors in form submission"
			redirect_to '/'
		end

	end

	private
	def contract_params
		params.require(:contract).permit(:car_model, :driver_name, :due_date, :customer_id)
	end

end
