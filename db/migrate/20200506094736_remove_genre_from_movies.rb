class RemoveGenreFromMovies < ActiveRecord::Migration[6.0]
  def change

    remove_column :movies, :genre, :string
  end
end
