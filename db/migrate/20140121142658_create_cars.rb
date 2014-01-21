class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string          :car_brand
      t.string          :car_model
      t.integer         :year
      t.string          :color
      t.string          :body_type
      t.integer         :client_id
      t.string          :number
      t.timestamps
    end
  end
end
