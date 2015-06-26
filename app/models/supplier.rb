class Supplier < ActiveRecord::Base
	has_one :account    #Supplier.find(1).account
end
