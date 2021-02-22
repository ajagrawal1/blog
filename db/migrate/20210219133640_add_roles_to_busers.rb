class AddRolesToBusers < ActiveRecord::Migration[6.1]
  def change
    add_column :busers, :admin, :boolean, default: false
  end
end
