class StoreController < ApplicationController
  def index
  	@latest_books = Book.all.order("created_at DESC").limit(3) # For showing in carousel
  	@books = Book.all
  end
end