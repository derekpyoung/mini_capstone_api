class ChangeScaleToNine < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :tax
    remove_column :orders, :total
  end
end
