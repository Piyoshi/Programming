class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
	@date = Date.new
  end
end
