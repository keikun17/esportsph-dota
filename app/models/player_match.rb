class PlayerMatch < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  belongs_to :team

  has_one :hero_selection

  validates :player_id, presence: true
  validates :match_id, presence: true
  validates :team_id, presence: true
end

# == Schema Information
#
# Table name: player_matches
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  player_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

