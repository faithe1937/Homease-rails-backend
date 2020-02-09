class AddColumnToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :budget, :float
    add_column :projects, :duedate, :date
  end
end
