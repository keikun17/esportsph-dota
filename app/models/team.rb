class Team < ActiveRecord::Base
  #habtm mapping
  has_many :team_matches
  has_many :hero_bans
  has_many :player_stats

  has_many :matches, through: :team_matches
  has_many :players

  delegate :average_apm,
    :average_gold,
    :average_creep_kills,
    :average_creep_denies,
    :average_kills,
    :average_deaths,
    :average_assists, to: :player_stats, prefix: 'historical'

  def win_count
    matches.where(winning_team_id: self.id).count
  end

  def loss_count
    matches.count - win_count
  end
end

# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

