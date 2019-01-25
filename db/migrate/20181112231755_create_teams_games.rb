class CreateTeamsGames < ActiveRecord::Migration[5.2]
  def change
    create_table :teams_games do |t|
      t.integer :team_id
      t.integer :game_id
      t.timestamps
    end
  end
end
