class CreateProjectTodos < ActiveRecord::Migration
  def change
    create_table :project_todos do |t|
      t.string :name
      t.string :due
      t.integer :project_id

      t.timestamps
    end
  end
end
