class PlayerStat < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  belongs_to :team

  belongs_to :hero

  validates :player_id, presence: true
  validates :match_id, presence: true
  validates :team_id, presence: true
  validates :hero_id, presence: true

  scope :by_hero_play_count, -> do
    select("player_stats.*, count(hero_id) as play_count").group(:hero_id).order('play_count desc')
  end

  delegate :name, to: :hero, allow_nil: true, prefix: true

  def self.average_apm
    average(:apm).to_f
  end

  def self.average_kills
    average(:creep_kills).to_f
  end

  def self.average_deaths
    average(:deaths).to_f
  end

  def self.average_assists
    average(:assists).to_f
  end

  def self.average_creep_kills
    average(:creep_kills).to_f
  end

  def self.average_creep_denies
    average(:creep_denies).to_f
  end

  def self.average_gold
    average(:gold).to_f
  end
end

# == Schema Information
#
# Table name: player_stats
#
#  id           :integer          not null, primary key
#  match_id     :integer
#  player_id    :integer
#  created_at   :datetime
#  updated_at   :datetime
#  team_id      :integer
#  hero_id      :integer
#  kills        :integer
#  deaths       :integer
#  assists      :integer
#  gold         :integer
#  apm          :integer
#  creep_kills  :integer
#  creep_denies :integer
#

