class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string          :name
      t.string          :phone
      t.date            :birthday
      t.string          :address
      t.string          :comment
      t.timestamps
    end
  end
end
