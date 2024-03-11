class StoreController < ApplicationController
  before_action :log_index_view, only: [:index]

  def index
    @products = Product.order(:title)
  end

  def log_index_view
    session[:index_views] ||= 0
    session[:index_views] += 1
    @index_views = session[:index_views]
  end

end
