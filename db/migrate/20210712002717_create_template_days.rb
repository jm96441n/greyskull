class CreateTemplateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :template_days do |t|
      t.references :routine
      t.string :name
      t.timestamps
    end
  end
end
