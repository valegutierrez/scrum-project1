class ChangeColumnInOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :category_id, :user_id
  end
end
