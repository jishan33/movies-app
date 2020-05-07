require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  context '#create' do
    it 're-renders the form when the name is invalid' do
      post :create, params: { movie: { name: nil} }

      expect(response).to render_template(:new)
    end
  end
end