class CreateMatchBannedHeroes < ActiveRecord::Migration
  def change
    create_table :match_banned_heroes do |t|
      t.references :team
      t.references :match
      t.references :hero
    end
  end
end
