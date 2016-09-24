class FixColumnName < ActiveRecord::Migration[5.0]
   def change
    rename_column :contracts, :dute_date, :due_date
  end

end
