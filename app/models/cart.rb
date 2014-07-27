class Cart < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy

	def add_book(book_id)
		current_item=line_items.find_by_book_id(book_id)
		if current_item
			if current_item.quantity.nil?
				current_item.quantity=0
			end
			current_item.quantity += 1
		else
			current_item = line_items.build(:book_id=>book_id,:quantity => 1)
		end
		current_item
	end
end
