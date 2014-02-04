class CreateDilers < ActiveRecord::Migration
  def change
    create_table :dilers do |t|
      t.string          :name
      t.string          :address
      t.string          :comment
      t.timestamps
    end
  end
end
