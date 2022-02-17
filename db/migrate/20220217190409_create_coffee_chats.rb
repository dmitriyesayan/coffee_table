class CreateCoffeeChats < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_chats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :topic
      t.boolean :availability
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
