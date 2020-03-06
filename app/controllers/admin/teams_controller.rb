class Admin::TeamsController < ApplicationController
  def edit
    raise ActionController::RoutingError.new('Not Found') if !current_user.admin?
    @team = Team.find(params[:id])
    @rounds = Round.all
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to admin_tournament_path(@team.tournament)
    else
      render 'edit'
    end
  end

  private

  def team_params
    params
      .require(:team)
      .permit(:round_id, :eliminated)
  end
end
