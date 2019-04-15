class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.time :time
      t.text :description
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
