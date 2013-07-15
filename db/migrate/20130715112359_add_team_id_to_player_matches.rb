class AddTeamIdToPlayerMatches < ActiveRecord::Migration
  def change
    add_column :player_matches, :team_id, :integer
    add_index :player_matches, :team_id
  end
end
