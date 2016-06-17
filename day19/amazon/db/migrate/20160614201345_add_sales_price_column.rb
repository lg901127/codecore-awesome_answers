class AddSalesPriceColumn < ActiveRecord::Migration
  def change
    add_column :products, :sales_price, :float, :precision => 10, :scale => 2
  end
end
