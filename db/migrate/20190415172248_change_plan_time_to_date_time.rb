class ChangePlanTimeToDateTime < ActiveRecord::Migration[5.2]
  def change
    change_table :plans do |t|
      t.remove :time
      t.column :when, :datetime
    end
  end
end
