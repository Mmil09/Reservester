class AddImageColToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :image, :string
  end
end
