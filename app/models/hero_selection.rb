class HeroSelection < ActiveRecord::Base
  belongs_to :player_stat
  belongs_to :hero

  has_one :player, through: :player_stat
end

# == Schema Information
#
# Table name: hero_selections
#
#  id              :integer          not null, primary key
#  player_stat :integer
#  hero_id         :integer
#

