class PlayerMatch < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  has_one :hero_selection

  validates :player_id, presence: true
  validates :match_id, presence: true
end
