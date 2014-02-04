class Indexes < ActiveRecord::Migration
  def change
    add_index :cars, :name, :unique => true
    add_index :clients, :phone, :unique => true
    add_index :clients, :name, :unique => true
    add_index :dilers, :name, :unique => true
    add_index :engineers, :name, :unique => true
    add_index :engineers, :phone, :unique => true
    add_index :orders, :name, :unique => true
    
    change_column_null(:cars, :name, false)
    change_column_null(:cars, :brand, false)
    
    change_column_null(:clients, :name, false)
    
    change_column_null(:dilers, :name, false)
    
    change_column_null(:engineers, :name, false)
    
    change_column_null(:orders, :name, false)
    change_column_null(:orders, :record_time, false)
    change_column_null(:orders, :car_id, false)
    change_column_null(:orders, :diler_id, false)
    change_column_null(:orders, :engineer_id, false)
  end
end
