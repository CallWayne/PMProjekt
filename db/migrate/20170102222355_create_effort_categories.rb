class CreateEffortCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :effort_categories do |t|
      t.integer :value
      t.string :description

      t.timestamps
    end
  end
end
