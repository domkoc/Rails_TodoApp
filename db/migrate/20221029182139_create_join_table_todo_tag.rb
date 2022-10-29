class CreateJoinTableTodoTag < ActiveRecord::Migration[7.0]
  def change
    create_join_table :todos, :tags
  end
end
