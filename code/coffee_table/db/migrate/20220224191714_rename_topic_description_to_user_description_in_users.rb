class RenameTopicDescriptionToUserDescriptionInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :description, :user_description
  end
end
