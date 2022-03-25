class AddExpertProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :expert_profile, :boolean, default: false
  end
end
