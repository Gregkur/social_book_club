class CreateBookclubs < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclubs do |t|
      t.string :name
      t.text :description
      t.boolean :visibility, default: true
      t.references :user, null: false, foreign_key: true
      t.references :thread_bookclub, null: false, foreign_key: true

      t.timestamps
    end
  end
end
