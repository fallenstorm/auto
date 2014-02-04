class DilersUsers < ActiveRecord::Migration
  def change
    create_table :dilers_users, id: false do |t|
        t.integer       :diler_id
        t.integer       :user_id
    end
  end
end
