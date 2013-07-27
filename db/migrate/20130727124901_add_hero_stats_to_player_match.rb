class AddHeroStatsToPlayerMatch < ActiveRecord::Migration
  def change
    add_column :player_stats, :strength, :integer
    add_column :player_stats, :vitality, :integer
    add_column :player_stats, :intelligence, :integer
  end
end
