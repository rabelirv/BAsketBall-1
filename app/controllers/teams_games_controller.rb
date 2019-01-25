class TeamsGamesController < ApplicationController
  def new
  		@teamsgame = TeamsGame.new
      @teams = Team.all
      @games = Game.all
  	end

  	def create
  		@teamsgame = TeamsGame.find_or_create_by(teams_params)
  		if @teamsgame.valid?
  			redirect_to @teamsgame.game
  		else
  			render :new
  		end
  	end

  	private

  	def teams_params
  		params.require(:teamsgame).permit(:team_id, :game_id)
  	end
  end
