class DeleteOldDateAndTime < ActiveRecord::Migration
  def change
  	remove_column :reservations, :date_old, :string
  	remove_column :reservations, :time_old, :string
  end
end
