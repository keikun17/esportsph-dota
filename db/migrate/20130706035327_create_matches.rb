class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :winning_team_id
      t.timestamps
    end

    add_index :matches, :winning_team_id
  end
end
