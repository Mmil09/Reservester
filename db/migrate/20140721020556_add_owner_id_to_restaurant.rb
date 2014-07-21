class AddOwnerIdToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :owner_id, :integer, null: false, default: Owner.first.try(:id) || 0
  end
end
