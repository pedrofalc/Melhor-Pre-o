class AddPostoToSupply < ActiveRecord::Migration[5.0]
  def change
    add_column :supplies, :posto, :string
  end
end
