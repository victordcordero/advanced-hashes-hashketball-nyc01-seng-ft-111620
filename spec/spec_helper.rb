require_relative '../hashketball'

require "pry"

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # config here
end

def num_points_scored(player_name)
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      return player[:points] if player[:player_name] == player_name
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_name
    end
  end
end

def team_colors(team_name)
  game_hash.each do |home_away, keys|
  if keys[:team_name] == team_name
      return keys[:colors].map
    end
  end
end

def team_names
  game_hash.map {|home_away, keys| keys[:team_name]}
end

def player_numbers(team_numbers)
  game_hash.each do |home_away, keys|
    if keys[:team_name] == team_numbers
    return keys[:players].map {|player| player[:number]}
  end
end
end

def player_stats(player_name)
  game_hash.each do |home_away, keys|
    if keys[:player_name] == player_name
      return keys[:players].map  {|player| player[0]}
      binding.pry
    end
      binding.pry
  end
end
