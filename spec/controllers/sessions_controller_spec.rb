require 'spec_helper'

describe SessionsController do

  let(:shop) { 'foo.shopqi.com' }

  context '#login' do

    context 'with session' do # 已登录

      before do
        session = mock('session')
        session.stub!(:[], 'shopqi').and_return({})
        controller.stub!(:session).and_return(session)
      end

      it 'should show dashboard' do # 直接显示后台管理
        get :callback_login, shop: shop
        response.should redirect_to(dashboard_path)
      end

    end

    context 'without session' do # 未登录

      it 'should redirect to shopqi auth' do # 授权登录
        get :callback_login, shop: shop
        response.should redirect_to(sessions_new_path(shop: shop))
      end

    end

  end

end
