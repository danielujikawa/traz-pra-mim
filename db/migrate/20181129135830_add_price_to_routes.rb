class AddPriceToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :price, :integer
  end
end
