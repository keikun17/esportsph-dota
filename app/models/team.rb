class Team < ActiveRecord::Base
  #habtm mapping
  has_many :games_teams

  has_many :games, through: :games_teams
  has_many :players
end
