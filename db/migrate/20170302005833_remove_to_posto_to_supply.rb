class RemoveToPostoToSupply < ActiveRecord::Migration[5.0]
  def change
    remove_column :supplies, :posto, :string
  end
end
