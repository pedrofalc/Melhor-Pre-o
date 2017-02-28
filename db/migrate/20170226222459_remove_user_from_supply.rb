class RemoveUserFromSupply < ActiveRecord::Migration[5.0]
  def change
    remove_column :supplies, :user, :string
  end
end
