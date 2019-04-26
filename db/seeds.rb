# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

all_sports = ["basketball", "baseball", "soccer", "football", "lacrosse", "ice hockey", "softball", "volleyball", "field hockey"]

puts "Starting sports"

all_sports.each do |sport|
    Sport.create( "name" => sport)
end

puts "Finished sports"