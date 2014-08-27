class Order < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy
	PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
end
