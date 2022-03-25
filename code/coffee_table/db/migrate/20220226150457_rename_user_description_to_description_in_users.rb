class RenameUserDescriptionToDescriptionInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :user_description, :description
  end
end
