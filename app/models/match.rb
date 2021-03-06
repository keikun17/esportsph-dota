class Match < ActiveRecord::Base
  #habtm mapping
  has_many :team_matches
  has_many :player_stats
  accepts_nested_attributes_for :team_matches
  accepts_nested_attributes_for :player_stats

  has_many :hero_bans

  has_many :teams, through: :team_matches
  has_many :players, through: :player_stats

  belongs_to :winner, class_name: 'Team', foreign_key: :winning_team_id

  validates :name, :winning_team_id, presence: true

  validate :no_duplicate_teams

  def no_duplicate_teams
    # quick hack to check team is unique
    if self.team_matches.size != self.team_matches.collect(&:team_id).uniq.size
      self.errors[:teams] << "duplicate team"
      return false
    end
  end

  rails_admin do
    edit do
      field :name
      field :winner
      field :teams
    end
  end

  def team_1
    teams.first
  end

  def team_2
    teams.last
  end

end

# == Schema Information
#
# Table name: matches
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  winning_team_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  duration        :integer          default(0)
#

