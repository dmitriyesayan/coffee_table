class AddExperienceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :experience, :integer, default: 0
  end
end
