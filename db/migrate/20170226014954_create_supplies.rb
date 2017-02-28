class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|
      t.datetime :date
      t.string :gasStation
      t.decimal :km
      t.decimal :liter
      t.string :fuel
      t.decimal :price
      t.string :user

      t.timestamps
    end
  end
end
