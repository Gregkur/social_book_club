class CreateBookclubUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclub_users do |t|
      t.references :bookclub, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
