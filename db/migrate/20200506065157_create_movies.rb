class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.integer :release_year
      t.float :rating
      t.string :country
      t.string :length

      t.timestamps
    end
  end
end
