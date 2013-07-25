class AddDurationToPlayerMatches < ActiveRecord::Migration
  def change
    add_column :matches, :duration, :integer
  end
end
