class AddUsernameAndNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
  end
end
