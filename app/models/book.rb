class Book < ActiveRecord::Base
	default_scope :order => 'created_at DESC' #Order on Load
	before_destroy :ensure_not_referenced_by_any_line_item
	validates :title, :description, :image_url, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :image_url, :format => {:with=> %r{\.(gif|jpg|png)}i,:message => 'must upload supported file (GIF, JPG or PNG image).'}
	
	private
	# ensure that there are no line items referencing this book
	def ensure_not_referenced_by_any_line_item 
		if line_items.empty?
			return true 
		else
            errors.add(:base, 'Line Items present')
			return false 
		end
	end
end