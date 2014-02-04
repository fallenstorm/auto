class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string          :name
      t.string          :brand
      t.string          :model
      t.string          :color
      t.integer         :year
      t.decimal         :engine_volume, :precision => 4, :scale => 2
      t.string          :vin
      t.string          :country
      t.integer         :client_id
      t.timestamps
    end
  end
end
