class HeroBan < ActiveRecord::Base
  belongs_to :team
  belongs_to :match
  belongs_to :hero
end

# == Schema Information
#
# Table name: hero_bans
#
#  id       :integer          not null, primary key
#  team_id  :integer
#  match_id :integer
#  hero_id  :integer
#

