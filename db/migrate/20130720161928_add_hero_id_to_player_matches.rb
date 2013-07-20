class AddHeroIdToPlayerMatches < ActiveRecord::Migration
  def change
    add_column :player_matches, :hero_id, :integer
    add_index :player_matches, :hero_id
  end
end
