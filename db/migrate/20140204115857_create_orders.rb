class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string          :name
      t.datetime        :record_time
      t.datetime        :arrival_time
      t.integer         :car_id
      t.integer         :diler_id
      t.integer         :engineer_id
      t.timestamps
    end
  end
end
