class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def authenticate_shop! # 必须通过认证
    redirect_to root_path unless session[:shopqi]
  end
end
