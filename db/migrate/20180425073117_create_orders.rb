class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :payment_mode
      t.datetime :DOP

      t.timestamps
    end
  end
end
