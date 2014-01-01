class StoreController < ApplicationController
  
  skip_before_filter :authorize

  def index
    if params[:set_locale]
        redirect_to store_path(locale: params[:set_locale])
    else
        if session[:counter].nil? then; session[:counter] = 0; end
        session[:counter] += 1
        @count = session[:counter]
        @products = Product.order(:title)
        @cart = current_cart
        @date = Date.new
    end
  end
end
