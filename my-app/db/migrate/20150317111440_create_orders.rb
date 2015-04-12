class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :price
      t.text :comment
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :people
  end
end
