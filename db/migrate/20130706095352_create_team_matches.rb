class CreateTeamMatches < ActiveRecord::Migration
  def change
    create_table :team_matches do |t|
      t.references :match
      t.references :team
      t.timestamps
    end

     add_index :team_matches, :match_id
     add_index :team_matches, :team_id
  end
end
