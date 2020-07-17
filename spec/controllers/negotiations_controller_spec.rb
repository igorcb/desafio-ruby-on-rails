require 'rails_helper'

RSpec.describe NegotiationsController, type: :controller do
  login_user

  context 'GET #index' do
    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end

    it 'should return @negotiations empty' do
      get :index
      expect(assigns(:negotiations)).to be_empty
    end

    it 'should return @negotiations' do
      create(:negotiation)
      get :index
      expect(assigns(:negotiations)).to_not be_empty
    end

  end
end
