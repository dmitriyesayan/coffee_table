class AddDescriptionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :description, :text
  end
end
