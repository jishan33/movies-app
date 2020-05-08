module MoviesHelper

  def picture_for(movie)
    if movie.picture.present?
      movie.picture
    else
      'movie_default.jpg'
    end
  end

end


