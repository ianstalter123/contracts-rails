Rails.application.routes.draw do

	resources :contracts

	resources :customers do
		resources :contracts
	end

	root 'contracts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#                Prefix Verb   URI Pattern                                          Controller#Action
#        customers_index GET    /customers/index(.:format)                           customers#index
#     customer_contracts GET    /customers/:customer_id/contracts(.:format)          contracts#index
#                        POST   /customers/:customer_id/contracts(.:format)          contracts#create
#  new_customer_contract GET    /customers/:customer_id/contracts/new(.:format)      contracts#new
# edit_customer_contract GET    /customers/:customer_id/contracts/:id/edit(.:format) contracts#edit
#      customer_contract GET    /customers/:customer_id/contracts/:id(.:format)      contracts#show
#                        PATCH  /customers/:customer_id/contracts/:id(.:format)      contracts#update
#                        PUT    /customers/:customer_id/contracts/:id(.:format)      contracts#update
#                        DELETE /customers/:customer_id/contracts/:id(.:format)      contracts#destroy
#              customers GET    /customers(.:format)                                 customers#index
#                        POST   /customers(.:format)                                 customers#create
#           new_customer GET    /customers/new(.:format)                             customers#new
#          edit_customer GET    /customers/:id/edit(.:format)                        customers#edit
#               customer GET    /customers/:id(.:format)                             customers#show
#                        PATCH  /customers/:id(.:format)                             customers#update
#                        PUT    /customers/:id(.:format)                             customers#update
#                        DELETE /customers/:id(.:format)                             customers#destroy
#                   root GET    /                                                    customers#index
