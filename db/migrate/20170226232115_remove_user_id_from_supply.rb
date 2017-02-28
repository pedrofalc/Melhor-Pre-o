class RemoveUserIdFromSupply < ActiveRecord::Migration[5.0]
  def change
    remove_column :supplies, :user_id, :integer
  end
end
