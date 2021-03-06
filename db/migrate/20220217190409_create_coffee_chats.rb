class CreateCoffeeChats < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_chats do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :availability, default: false
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
