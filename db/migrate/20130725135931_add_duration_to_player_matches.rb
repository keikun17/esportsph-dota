class AddDurationToPlayerMatches < ActiveRecord::Migration
  def change
    add_column :matches, :duration, :integer, default: 0
  end
end
