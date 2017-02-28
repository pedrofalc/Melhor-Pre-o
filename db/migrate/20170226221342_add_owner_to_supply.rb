class AddOwnerToSupply < ActiveRecord::Migration[5.0]
  def change
    add_column :supplies, :owner, :integer
  end
end
