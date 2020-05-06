class CreateCastMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :cast_movies do |t|
      t.references :cast, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
