class RemoveTelephoneFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :telephone, :string
  end
end
