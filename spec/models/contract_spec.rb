require 'rails_helper'

RSpec.describe Contract, :type => :model do
  it "is invalid without valid attributes" do
    expect(Contract.new).to be_invalid
  end

  it "is invalid without a driver_name" do
    expect(Contract.new(driver_name:nil)).to be_invalid
  end

  it "is invalid without a car_model" do
    expect(Contract.new(driver_name:'ian', customer_id:2, car_model:nil)).to be_invalid
  end

  it "is invalid without a customer_id" do
    expect(Contract.new(driver_name:'ian', customer_id:nil, car_model:'porsche')).to be_invalid
  end

  # it "is valid with all attributes" do
  # 	c = Customer.new(name:"ian", id:1)
  # 	p c
  #   expect(Contract.new(driver_name:'ian', customer_id:1, car_model:'porsche')).to be_valid
  # end
end
