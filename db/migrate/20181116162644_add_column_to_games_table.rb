class AddColumnToGamesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :location_id, :integer
  end
end
