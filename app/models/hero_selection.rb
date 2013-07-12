class HeroSelection < ActiveRecord::Base
  belongs_to :player_match
  belongs_to :hero

  has_one :player, through: :player_match
end
