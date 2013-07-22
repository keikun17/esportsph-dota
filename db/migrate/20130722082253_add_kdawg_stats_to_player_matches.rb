class AddKdawgStatsToPlayerMatches < ActiveRecord::Migration
  def change
    add_column :player_matches, :kills, :integer
    add_column :player_matches, :deaths, :integer
    add_column :player_matches, :assists, :integer
    add_column :player_matches, :gold, :integer
  end
end
