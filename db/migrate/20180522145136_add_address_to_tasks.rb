class AddAddressToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :title, :string, :details, :text, :completed, :boolean
  end
end
