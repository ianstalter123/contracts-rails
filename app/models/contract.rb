class Contract < ApplicationRecord
	belongs_to :customer
	validates :driver_name, :presence => true
	validates :car_model, :presence => true
end
