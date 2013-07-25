class AddXpToPlayerStats < ActiveRecord::Migration
  def change
    add_column :player_stats, :experience, :integer, default: 0
  end
end
