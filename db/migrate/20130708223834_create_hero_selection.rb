class CreateHeroSelection < ActiveRecord::Migration
  def change
    create_table :hero_selections do |t|
      t.references :player_match
      t.references :hero
    end

    add_index :hero_selections, :player_match_id
    add_index :hero_selections, :hero_id
  end
end
