class AddAttachedDataToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image_data, :string
  end
end
