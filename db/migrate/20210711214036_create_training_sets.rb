class CreateTrainingSets < ActiveRecord::Migration[6.1]
  def change
    create_table :training_sets do |t|
      t.references :day
      t.references :exercise
      t.integer :reps
      t.float :weight
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
