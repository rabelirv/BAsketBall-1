class Game < ApplicationRecord
  has_many :teams_games
  has_many :teams, through: :teams_games
  belongs_to :location

end
