class RenamePlayerMatchesToPlayerStats < ActiveRecord::Migration
  def change
    rename_table :player_matches, :player_stats
  end
end
