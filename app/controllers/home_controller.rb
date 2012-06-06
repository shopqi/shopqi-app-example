class HomeController < ApplicationController
  prepend_before_filter :authenticate_shop!, except: :index

  def index
  end

  def dashboard
    Shopkit.setup url: session[:shopqi][:url], access_token: session[:shopqi][:access_token]
    @orders = Shopkit.orders per_page: 3
    @products = Shopkit.products per_page: 5
  end

end
