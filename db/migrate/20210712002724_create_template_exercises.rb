class CreateTemplateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :template_exercises do |t|
      t.references :template_day
      t.references :exercise
      t.integer :sets
      t.integer :reps
      t.timestamps
    end
  end
end
