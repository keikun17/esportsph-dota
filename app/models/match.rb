class Match < ActiveRecord::Base
  #habtm mapping
  has_many :team_matches
  has_many :match_banned_heroes

  has_many :teams, through: :team_matches
  has_many :players, through: :teams

  belongs_to :winner, class_name: 'Team', foreign_key: :winning_team_id

end
