require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  login_user

  context 'GET #index' do
    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end

  context 'POST #upload' do
    it 'responds with success' do
      create(:payment)
      post :upload, params: {
        archive: fixture_file_upload('/files/CNAB.txt', 'text/plain')
      }
      expect(response).to redirect_to(negotiations_path)
    end
  end
end
