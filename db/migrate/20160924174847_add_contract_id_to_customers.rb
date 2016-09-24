class AddContractIdToCustomers < ActiveRecord::Migration[5.0]
  def change
  	add_column :contracts, :customer_id, :integer
 	  add_index :contracts, :customer_id
  end
end
