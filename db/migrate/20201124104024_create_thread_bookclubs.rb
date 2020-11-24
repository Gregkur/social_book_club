class CreateThreadBookclubs < ActiveRecord::Migration[6.0]
  def change
    create_table :thread_bookclubs do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
