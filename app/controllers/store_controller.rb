class StoreController < ApplicationController
  def index
  	@books = Book.all
  	@cart = current_cart
  end
end