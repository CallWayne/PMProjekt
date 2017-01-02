class CreateBacklogItems < ActiveRecord::Migration[5.0]
  def change
    create_table :backlog_items do |t|
      t.integer :ranking
      t.string :descripton

      t.timestamps
    end
  end
end
