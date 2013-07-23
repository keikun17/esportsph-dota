class AddApmCreepStatsToPlayerMatches < ActiveRecord::Migration
  def change
    add_column :player_matches, :apm, :integer
    add_column :player_matches, :creep_kills, :integer
    add_column :player_matches, :creep_denies, :integer
  end
end
