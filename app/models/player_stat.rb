class PlayerStat < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  belongs_to :team

  belongs_to :hero

  validates :player_id, presence: true
  validates :match_id, presence: true
  validates :team_id, presence: true
  validates :hero_id, presence: true
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

