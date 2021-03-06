class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  
  
  def index
    @movies = Movie.all
  end

  def show
    #can comment this and the edit and update because of the strong params
    # @movie = Movie.find(params[:id])
  end

  #still need to do some stuff here for a flash message
  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user

      if @movie.errors.any?
        render :new
      else
        flash[:success] = "You successfully created a new listing!"
        @movie.save
        redirect_to @movie
      end
  end


  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy


    redirect_to movies_path
  end

  private

  def movie_params

    params.require(:movie).permit(:name, :release_year, :rating, :country_id, :user_id, :director_id, :length, :picture)
  end


  def find_movie
    @movie = Movie.find(params[:id])
  end
end



