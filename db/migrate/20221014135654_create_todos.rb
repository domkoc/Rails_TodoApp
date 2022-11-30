class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.boolean :is_done
      t.belongs_to :user

      t.timestamps
    end
  end
end
