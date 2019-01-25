class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
        t.integer :wins,:default => 0
        t.integer :losses,:default => 0
        t.string :stats
        t.date :last_game
      t.timestamps
    end
  end
end
