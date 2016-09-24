class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :car_model
      t.string :driver_name
      t.date :dute_date

      t.timestamps
    end
  end
end
