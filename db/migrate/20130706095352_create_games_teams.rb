class CreateGamesTeams < ActiveRecord::Migration
  def change
    create_table :games_teams do |t|
      t.references :game
      t.references :team
    end
  end
end
