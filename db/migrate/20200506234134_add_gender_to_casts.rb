class AddGenderToCasts < ActiveRecord::Migration[6.0]
  def change
    add_column :casts, :gender, :integer
  end
end
