class CreateMatchBannedHeroes < ActiveRecord::Migration
  def change
    create_table :hero_bans do |t|
      t.references :team
      t.references :match
      t.references :hero
    end
  end
end
