class DropThreadBookclubs < ActiveRecord::Migration[6.0]
  def change
    drop_table :thread_bookclubs, force: :cascade
    drop_table :comments, force: :cascade
  end
end
