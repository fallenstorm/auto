class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime        :when
      t.string          :place
      t.integer         :client_id
      t.string          :comment
      t.timestamps
    end
  end
end
