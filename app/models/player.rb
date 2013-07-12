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
