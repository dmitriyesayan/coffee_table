class AddFreeConsultationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :free_consultation, :boolean, default: false
  end
end
