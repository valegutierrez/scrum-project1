class AddSoldToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :sold, :boolean, default: false
  end
end
