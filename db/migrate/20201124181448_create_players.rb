class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :name
      t.integer :age
      t.date :birthdate
    end
  end
end
