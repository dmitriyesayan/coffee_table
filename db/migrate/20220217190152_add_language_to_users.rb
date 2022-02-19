class AddLanguageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :language, :string
  end
end
