class AddAndRemoveOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :tax, :decimal, precision: 5, scale: 2

    add_column :orders, :total, :decimal, precision: 5, scale: 2

    remove_column :orders, :product_id 
  end
end
