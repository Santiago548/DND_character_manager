class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :charcters do |t|
      t.string :charcter_name
      t.integer :character_level
      t.string
  end
end
