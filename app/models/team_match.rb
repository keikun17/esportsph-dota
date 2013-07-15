class TeamMatch < ActiveRecord::Base
  belongs_to :team
  belongs_to :match
end

# == Schema Information
#
# Table name: team_matches
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  team_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

