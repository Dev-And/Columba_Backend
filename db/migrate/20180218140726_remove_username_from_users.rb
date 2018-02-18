class RemoveUsernameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :username, :string
    remove_column :users, :login, :string
    remove_column :users, :login_number, :string
  end
end
