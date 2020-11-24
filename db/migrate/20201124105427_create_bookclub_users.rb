class CreateBookclubUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclub_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bookclub, null: false, foreign_key: true
    end
  end
end
