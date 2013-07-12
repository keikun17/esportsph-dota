class Match < ActiveRecord::Base
  #habtm mapping
  has_many :team_matches
  has_many :hero_bans

  has_many :teams, through: :team_matches
  has_many :players, through: :teams

  belongs_to :winner, class_name: 'Team', foreign_key: :winning_team_id

  rails_admin do
    edit do
      field :name
      field :winner
      field :teams
    end
  end
end
