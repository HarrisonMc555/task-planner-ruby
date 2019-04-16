class AddDatetimeToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :when, :datetime
  end
end
