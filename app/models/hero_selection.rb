class HeroSelection < ActiveRecord::Base
  belongs_to :player_match
  belongs_to :hero
end
