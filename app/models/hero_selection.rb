class HeroSelection < ActiveRecord::Base
  belongs_to :player_match
  belongs_to :hero

  has_one :player, through: :player_match
end

# == Schema Information
#
# Table name: hero_selections
#
#  id              :integer          not null, primary key
#  player_match_id :integer
#  hero_id         :integer
#

