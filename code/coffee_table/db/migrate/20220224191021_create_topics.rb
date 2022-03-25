class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :icon
      t.string :topic_name
      t.text :topic_description

      t.timestamps
    end
  end
end
