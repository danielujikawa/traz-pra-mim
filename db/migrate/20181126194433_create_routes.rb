class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.string :origin
      t.string :destination
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
