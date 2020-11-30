sabrina = Player.create!(username: 'boots1234', email: 'sabrina@gmail.com', name: 'Sabrina', age: 27, birthdate: '11/26/1993')

dom = Player.create!(username: 'santiago1234', email: 'dominic@gmail.com', name: 'Dominic', age: 30, birthdate: '02/06/1990')

thomas = Player.create!(username: 'dngrb4x', email: 'thomas@gmail.com', name: 'Thomas', age: 32, birthdate: '06/12/19888')

mac = Character.create!(character_name: 'Mac', character_level: 12, character_race: 'Elvish', character_class: 'Ranger', armor_class: 18, character_speed: 45, character_strength: 3,character_dexterity: 4, character_constitution: 3, character_intelligence: 2, character_wisdom: 3, character_charisma: 3, weapon_proficiencies: 'long-swords', armor_proficiencies: 'light-armor', languages: 'Elvish', player_id: 1)

griff = Character.create!(character_name: 'Griff', character_level: 17, character_race: 'Human', character_class: 'Investigator', armor_class: 17, character_speed: 35, character_strength: 2, character_dexterity: 4, character_constitution: 3, character_intelligence: 5, character_wisdom: 3, character_charisma: 4, weapon_proficiencies: 'firearms', armor_proficiencies: 'light-armor', languages: 'Common', player_id: 2)

grog = Character.create!(character_name: 'Grog', character_level: 17, character_race: 'Human', character_class: 'Investigator', armor_class: 20, character_speed: 35, character_strength: 4, character_dexterity: 3, character_constitution: 4, character_intelligence: 2, character_wisdom: 3, character_charisma: 2, weapon_proficiencies: 'Martial', armor_proficiencies: 'all-armor', languages: 'Orcish', player_id: 3)