class AddCommentToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :comment, :text
  end
end
