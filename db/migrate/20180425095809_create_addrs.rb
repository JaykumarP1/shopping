class CreateAddrs < ActiveRecord::Migration[5.2]
  def change
    create_table :addrs do |t|
      t.string :door_no
      t.text :street
      t.string :city
      t.string :state
      t.string :code
      t.references :orderable, polymorphic: true

      t.timestamps
    end
  end
end
