class AddDescriptionFullAddressRemoveUserId < ActiveRecord::Migration
  def change
  	add_column :restaurants, :full_address, :text
  	add_column :restaurants, :description, :text
  	remove_column :restaurants, :user_id, :integer
  end
end
