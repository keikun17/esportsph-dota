class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :winning_team_id
      t.timestamps
    end

    add_index :games, :winning_team_id
  end
end
