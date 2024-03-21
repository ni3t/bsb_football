module Nfl
  def self.table_name_prefix
    "nfl_"
  end

  def self.use_relative_model_naming?
    true
  end

  def self.sync_players
    results = HTTParty.get("https://api.sleeper.app/v1/players/nfl") 
    results.each do |id, data|
      Nfl::Player.find_or_create_by(sleeper_id: id) do |player|
        player.name = data["full_name"]
        player.position = data["position"]
        player.team = data["team"]
        player.search_rank = data["search_rank"]
        player.sleeper_data = data
      end
    end
    true
  end
end
