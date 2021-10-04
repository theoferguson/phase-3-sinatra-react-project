puts "Clearing old data..."
Player.destroy_all
Position.destroy_all
Team.destroy_all

puts "Seeding teams..."

teams = ["49ers", "Ravens","Giants", "Saints", "Chargers"]

teams.each do |team|
    Team.create(name: team)
end
#############################
puts "Seeding positions"

positions = ["Quarterback", "Tight End", "Wide Reciever", "Running Back"]

positions.each do |position|
    Position.create(name: position)
end
###############################
puts "Seeding players"

Player.create(name: "Jimmy Garoppolo", team_id: Team.first.id, position_id: Position.first.id)
Player.create(name: "Mark Andrews", team_id: Team.second.id, position_id: Position.last.id)


puts "✅ Done seeding!"
