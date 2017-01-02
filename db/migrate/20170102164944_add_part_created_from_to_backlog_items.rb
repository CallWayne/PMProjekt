class AddPartCreatedFromToBacklogItems < ActiveRecord::Migration[5.0]
  def change
    add_column :backlog_items, :createdFrom, :string
  end
end
