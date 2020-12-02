class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.date :birthdate
    end
  end
end
