class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update]
  
  def index
  end

  def show
    #can comment this and the edit and update because of the strong params
    # @movie = Movie.find(params[:id])
  end

  #still need to do some stuff here for a flash message
  def create
    @movie = current_user.movies.create(movie_params)
  end


  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
    @movie.update(movie_params)

    redirect_to @movie
  end

  def destroy
    @movie.destroy

    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
