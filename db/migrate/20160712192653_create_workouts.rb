class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|

      t.datetime :date
      t.string :activity
      t.string :mood
      t.string :duration
      
      t.timestamps
    end
  end
end
