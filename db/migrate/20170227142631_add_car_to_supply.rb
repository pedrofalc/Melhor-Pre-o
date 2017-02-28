class AddCarToSupply < ActiveRecord::Migration[5.0]
  def change
    add_reference :supplies, :car, foreign_key: true
  end
end
