class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :type
      t.string :pick_up_address
      t.string :delivery_address
      t.string :date

      t.timestamps
    end
  end
end
