class Team < ActiveRecord::Base
  #habtm mapping
  has_many :team_matches
  has_many :match_banned_heroes

  has_many :matches, through: :team_matches
  has_many :players
end
