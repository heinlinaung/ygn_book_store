class Book < ActiveRecord::Base
	default_scope :order => 'created_at DESC' #Order on Load
	validates :title, :description, :image_url, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :image_url, :format => {:with=> %r{\.(gif|jpg|png)}i,:message => 'must upload supported file (GIF, JPG or PNG image).'}
end