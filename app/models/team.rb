class Team < ActiveRecord::Base
  #habtm mapping
  has_many :team_matches
  has_many :hero_bans

  has_many :matches, through: :team_matches
  has_many :players
end
