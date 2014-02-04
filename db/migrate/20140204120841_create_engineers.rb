class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string          :name
      t.date            :birthday
      t.string          :address
      t.string          :phone
      t.timestamps
    end
  end
end
