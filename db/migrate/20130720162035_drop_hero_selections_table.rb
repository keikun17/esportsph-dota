class DropHeroSelectionsTable < ActiveRecord::Migration
  def up
    drop_table :hero_selections
  end

  def down
    create_table :hero_selections do |t|
      t.references :player_match
      t.references :hero
    end

    add_index :hero_selections, :player_match_id
    add_index :hero_selections, :hero_id
  end
end
