class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|
      t.string :name
      t.boolean :gender
      t.integer :birth_year
      t.string :country

      t.timestamps
    end
  end
end
