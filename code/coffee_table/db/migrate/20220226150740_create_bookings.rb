class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :coffee_chat, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :video_link
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
