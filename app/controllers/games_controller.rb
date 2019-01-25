class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @games = Game.new
    @locations = Location.all
  end

  def create
    @game = Game.create(game_params)
    @locations = @game.location
    redirect_to location_path(@locations)
  end

  def show
    @game = Game.find(params[:id])
    @teams = @game.teams
    @locations = @game.location
  end

  private

  def game_params
    params.require(:game).permit(:time)
  end
end
