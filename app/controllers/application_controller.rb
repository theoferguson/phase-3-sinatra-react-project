class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/teams" do
    teams = Team.all
    teams.to_json
  end

  get "/positions" do
    positions = Position.all
    positions.to_json
  end

  get "/players" do
    players = Player.all
    players.to_json(include: [:team, :position])
  end

  get "/players/:id" do
    player = Player.find(params[:id])
    player.to_json(include: [{ team: { include: {players: {include: :position}}} }, :position])
  end

  delete "/players/:id" do
    player = Player.find(params[:id])
    player.destroy
    player.to_json
  end

  post "/players" do
    player = Player.create(
      name: params[:name],
      team_id: Team.find_by(name: params[:team]).id,
      position_id: Position.find_by(name: params[:position]).id
    )
    player.to_json

  end

end
