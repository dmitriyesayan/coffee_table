class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :booking, null: false, foreign_key: true
      t.text :message
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
