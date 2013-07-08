class Game < ActiveRecord::Base
  #habtm mapping
  has_many :games_teams

  has_many :teams, through: :games_teams
  has_many :players, through: :teams

  belongs_to :winner, class_name: 'Team', foreign_key: :winning_team_id

end
