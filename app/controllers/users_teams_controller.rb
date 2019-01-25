class UsersTeamsController < ApplicationController

  def new
    @usersteam = current_user.usersteams.build
    @users = User.all
    @teams = Team.all
  end

  def create
    # @team = Team.find(params[:team_id])

    @usersteam = current_user.users_teams.build(user_id: current_user, team_id: params[:id])
    @usersteam.save
    redirect_to teams_path
  end


  private

  def user_params
    params.require(:users_team).permit(:user_id, [:users_team][:team_id])
  end
end
