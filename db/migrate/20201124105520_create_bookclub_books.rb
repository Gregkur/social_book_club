class CreateBookclubBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclub_books do |t|
      t.references :bookclub, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
    end
  end
end
