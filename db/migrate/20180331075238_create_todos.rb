class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :text
      t.string :project_id
      t.boolean :isCompleted

      t.timestamps
    end
    add_index :todos, :project_id
  end
end
