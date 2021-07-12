class CreateProfileRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :profile_routines do |t|
      t.references :profile
      t.references :routine
      t.string :name
      t.boolean :active
      t.timestamps
    end
  end
end
