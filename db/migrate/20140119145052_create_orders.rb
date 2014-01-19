class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :number
      t.integer :price
      t.boolean :shipping

      t.timestamps
    end
  end
end
