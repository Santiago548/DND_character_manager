class CreateCharacters < ActiveRecord::Migration
  def change
    
    create_table :characters do |t|
      t.string :character_name
      t.integer :character_level
      t.string :character_race
      t.string :character_class
      t.integer :armor_class
      t.integer :character_speed
      t.integer :character_strength
      t.integer :character_dexterity
      t.integer :character_constitution
      t.integer :character_intelligence
      t.integer :character_wisdom
      t.integer :character_charisma
      t.string :weapon_proficiencies
      t.string :armor_proficiencies
      t.string :languages
      t.integer :player_id
    end
  end
end
