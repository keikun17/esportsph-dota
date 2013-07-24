class Hero < ActiveRecord::Base
  has_many :player_stats, foreign_key: :hero_selection
end

# == Schema Information
#
# Table name: heroes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

