class ApplicationController < ActionController::Base
  protect_from_forgery
  helper ShopqiApp::ApplicationHelper
  include ShopqiApp::ApplicationHelper
  #helper ShopqiApp::Engine.helpers
end
