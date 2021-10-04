class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/players" do
    players = Player.all
    players.to_json
  end

  get "/players/:id" do
    player = Player.find(params[:id])
    player.to_json(include: { team: { include: {players: {include: :position}}} })
  end

end
