# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
one_star_units = [ 
    {:name => 'Camille', :description => 'Hextech Blademaster'},
    {:name => 'Elise', :description => 'Demon Shapeshifter'},    
    {:name => 'Darius', :description => 'Imperial Knight'},
    {:name => 'Fiora', :description => 'Noble Blademaster'},
    {:name => 'Garen', :description => 'Noble Knight'},
    {:name => 'Graves', :description => 'Pirate Gunslinger'},
    {:name => 'Kassadin', :description => 'Void Mage'},
    {:name => 'Kha\'Zix', :description => 'Void Assassin'},
    {:name => 'Mordekaiser', :description => 'Phantom Knight'},
    {:name => 'Nidalee', :description => 'Wild Shapeshifter'},
    {:name => 'Tristana', :description => 'Yordle Gunslinger'},
    {:name => 'Vayne', :description => 'Noble Ranger'},
    {:name => 'Warwick', :description => 'Wild Brawler'}
]
one_star_units.each do |unit|
    corigin, cclass = unit[:description].split
    unit[:corigin] = corigin
    unit[:cclass] = cclass
    unit.delete(:description)
end
one_star_units.each do |t|
    t[:rating] = 1
    Champion.create!(t) 
end