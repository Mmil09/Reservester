class ChangeDateAndTimeFormats < ActiveRecord::Migration
  def change
  	rename_column :reservations, :date, :date_old
  	rename_column :reservations, :time, :time_old
  	add_column :reservations, :date, :date
  	add_column	:reservations, :time, :time
  end
end
