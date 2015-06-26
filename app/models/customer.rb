class Customer < ActiveRecord::Base
	has_many :orders    #@customer.first.orders
	accepts_nested_attributes_for :orders
end
