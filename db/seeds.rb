puts "Clearing old data..."
Player.destroy_all
Position.destroy_all
Team.destroy_all

puts "Seeding teams..."

teams = [
    "San Francisco 49ers",
    "Chicago Bears",
    "Cincinnati Bengals",
    "Buffalo Bills",
    "Denver Broncos",
    "Cleveland Browns",
    "Arizona Cardinals",
    "Los Angeles Chargers",
    "Kansas City Chiefs",
    "Indianapolis Colts",
    "Dallas Cowboys",
    "Miami Dolphins",
    "Philadelphia Eagles",
    "Atlanta Falcons",
    "New York Giants",
    "Jacksonville Jaguars",
    "New York Jets",
    "Detroit Lions",
    "Green Bay Packers",
    "Carolina Panthers",
    "New England Patriots",
    "Oakland Raiders",
    "Los Angeles Rams",
    "Baltimore Ravens",
    "Washington Redskins",
    "New Orleans Saints",
    "Seattle Seahawks",
    "Pittsburgh Steelers",
    "Tampa Bay Buccaneers",
    "Houston Texans",
    "Tennessee Titans",
    "Minnesota Vikings"]

teams.each do |team|
    Team.create(name: team)
end
#############################
puts "Seeding positions"

positions = ["Quarterback", "Tight End", "Wide Reciever", "Running Back", "Guard", "Tackle", "Center", "Fullback", "Defensive End", "Linebacker", "Cornerback", "Safety", "Punter", "Kicker"]

positions.each do |position|
    Position.create(name: position)
end
###############################
puts "Seeding players"

100.times do
    Player.create(name: Faker::GreekPhilosophers.name, team_id: Team.all.sample.id, position_id: Position.all.sample.id)
end


puts "✅ Done seeding!"
