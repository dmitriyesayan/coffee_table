class AddTopicToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :topic, :string
  end
end
