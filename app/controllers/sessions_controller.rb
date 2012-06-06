class SessionsController < ApplicationController

  def new
    if params[:shop].present?
      redirect_to "/auth/shopqi?shop=#{params[:shop].to_s.strip}"
    else
      redirect_to root_path
    end
  end

  def create
    if response = request.env['omniauth.auth']
      session[:shopqi] = { 
        url: params[:shop],
        access_token: response['credentials']['token'],
        shop: response['extra']['raw_info']['shop']
      }
      redirect_to dashboard_path
    else
      flash[:error] = "Could not log in to store."
      redirect_to root_path
    end
  end

  def destroy
    session[:shopqi] = nil
    redirect_to root_path
  end

end
