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

