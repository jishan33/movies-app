class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update]

  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
