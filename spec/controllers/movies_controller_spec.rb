require 'rails_helper'
require 'support/controller_helpers'

RSpec.describe MoviesController, type: :controller do
  context '#create' do
    it 're-renders the form when the name is invalid' do
      sign_in
      post :create, params: { movie: { name: nil} }

      expect(response).to render_template(:new)
    end
  end

  context '#update' do
    it 're-renders the form if the name is invalid' do
      sign_in

      director = Director.create(name: 'An Li') 
      user = User.create(email: 'User@gmail.com', password: 'password') 
      country = Country.create(name: 'Australia') 
      movie_to_update = Movie.create(
      name: 'Lord of Rings',
      release_year: 2001,
      director_id: 1,
      country_id: 1,
      user_id: 1 )

      put :update, params: { id: movie_to_update.id, movie: { name: nil } }
      expect(response).to render_template(:edit)
    end
  end

  context '#index' do
    it "assigns @movies" do
      sign_in

      director = Director.create(name: 'An Li') 
      user = User.create(email: 'User@gmail.com', password: 'password') 
      country = Country.create(name: 'Australia') 
      movie = Movie.create(
      name: 'Lord of Rings2',
      release_year: 2001,
      director_id: 1,
      country_id: 1,
      user_id: 1 )

      get :index
      expect(assigns(:movies)).to eq([movie])
    end

    it "renders the index template" do
      sign_in
      
      get :index
      expect(response).to render_template("index")
    end

  end

end