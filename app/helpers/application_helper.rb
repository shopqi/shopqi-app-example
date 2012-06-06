module ApplicationHelper

  def current_shop
    session[:shopqi] && session[:shopqi][:shop]
  end

  def shop_url
    "http://#{current_shop['shopqi_domain']}"
  end

end
