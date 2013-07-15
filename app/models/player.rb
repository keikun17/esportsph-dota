class Player < ActiveRecord::Base
  belongs_to :team
  has_many :player_matches
  has_many :hero_selection, through: :player_matches

  has_many :heroes, through: :hero_selection

  validates :name, presence: true

  rails_admin do
    edit do
      field :name
      field :team
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

