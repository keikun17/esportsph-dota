class CreatePlayerMatches < ActiveRecord::Migration
  def change
    create_table :player_matches do |t|
      t.references :match
      t.references :player
      t.timestamps
    end

    add_index :player_matches, :match_id
    add_index :player_matches, :player_id
  end
end
