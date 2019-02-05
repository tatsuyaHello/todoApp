class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.integer :deadline
      t.boolean :done
      t.string :comment

      t.timestamps
    end
  end
end
