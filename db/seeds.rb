Contract.destroy_all
Customer.destroy_all

ary = Array.new

50.times do |index|
	c = Customer.create!(name: Faker::Name.name,
		address: Faker::Address.city)
	ary.push(c)
end

ary.each { |a|
	40.times do
		Contract.create!(car_model: Faker::Company.name,
			driver_name: Faker::Name.name, due_date: Faker::Date.forward(23),
			customer_id: a.id)
	end
}

p "Created #{Customer.count} customers"
