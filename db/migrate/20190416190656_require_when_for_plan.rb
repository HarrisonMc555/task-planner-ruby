class RequireWhenForPlan < ActiveRecord::Migration[5.2]
  def change
    change_table :plans do |t|
      # Make sure no null values exist
      Plan.where(when: nil).update_all(when: Time.now)

      # Change the column to not allow null
      t.change :when, :datetime, null: false
    end
  end
end
