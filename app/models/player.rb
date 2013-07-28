class Player < ActiveRecord::Base
  belongs_to :team
  has_many :player_stats
  accepts_nested_attributes_for :player_stats

  has_many :matches, through: :player_stats
  has_many :heroes, through: :player_stats

  validates :name, presence: true

  rails_admin do
    edit do
      field :name
      field :team
    end
  end

  def favorite_hero
    if player_stats.by_hero_play_count.first
      player_stats.by_hero_play_count.first.hero
    end
  end

end

# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  team_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

