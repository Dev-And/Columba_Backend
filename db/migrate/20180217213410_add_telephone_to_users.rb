class AddTelephoneToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :telephone, :string
    add_index :users, :telephone, unique: true
  end
end
