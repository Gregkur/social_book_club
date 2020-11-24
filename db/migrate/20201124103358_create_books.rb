class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.text :description
      t.string :year
      t.integer :pages
      t.boolean :availability, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
