class RemoveGenderFromCasts < ActiveRecord::Migration[6.0]
  def change

    remove_column :casts, :gender, :boolean
  end
end
