class Team < ApplicationRecord
  has_many :users_teams
  has_many :users, through: :users_teams
  has_many :teams_games
  has_many :games, through: :teams_games


#   def self.team_size(team)
#       team.users.count
#   end
#
#   def join_team
#     if Team.team_size < 5
#     team.users << self
#     end
#   end
 end
