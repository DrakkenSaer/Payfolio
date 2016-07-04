class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin,      :boolean
    add_column :users, :freelancer, :boolean
    add_column :users, :client,     :boolean
    add_column :users, :username,   :string
  end
end
