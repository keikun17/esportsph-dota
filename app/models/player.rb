class Player < ActiveRecord::Base
  belongs_to :team
  has_many :player_matches
  has_many :picked_heroes, through: :player_matches, source: :hero_selection, class_name: "Hero"

end
