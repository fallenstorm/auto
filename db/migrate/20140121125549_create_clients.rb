class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string          :sirname
      t.string          :name
      t.string          :middle_name
      t.string          :phone
      t.string          :car
      t.timestamps
    end
  end
end
