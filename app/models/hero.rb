class Hero < ActiveRecord::Base
  has_many :player_matches, foreign_key: :hero_selection
end
