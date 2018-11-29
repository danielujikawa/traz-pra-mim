class ChangeCapacityToBeStringInRoutes < ActiveRecord::Migration[5.2]
  def change
    change_column :routes, :capacity, :string
  end
end
