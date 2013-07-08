class Player < ActiveRecord::Base
  belongs_to :team
  has_many :matches, through: :team

  has_many :picked_heroes,
    class_name: "Hero",
    foreign_key: :hero_id

end
