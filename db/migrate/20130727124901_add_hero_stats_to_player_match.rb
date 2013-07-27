class AddHeroStatsToPlayerMatch < ActiveRecord::Migration
  def change
    add_column :player_stats, :strength, :integer, default: 0
    add_column :player_stats, :vitality, :integer, default: 0
    add_column :player_stats, :intelligence, :integer, default: 0
  end
end
