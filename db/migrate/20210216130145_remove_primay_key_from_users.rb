class RemovePrimayKeyFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :primay_key, :string
  end
end
