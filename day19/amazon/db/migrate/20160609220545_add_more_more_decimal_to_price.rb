class AddMoreMoreDecimalToPrice < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :price, :float, :precision => 10, :scale => 2
    end
  end
end
